import 'package:checkout_app/Core/utils/api_service.dart';
import 'package:checkout_app/Core/utils/stripe_service.dart';
import 'package:checkout_app/Core/widgets/custom_button.dart';
import 'package:checkout_app/Features/Checkout/data/repos/checkout_repo_impl.dart';
import 'package:checkout_app/Features/Checkout/presentation/manager/cubits/stripe_payment_cubit/stripe_payment_cubit.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/total_price.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/basket_image.png',
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const OrderInfoItem(
                title: 'Order Subtotal',
                value: r'$42.97',
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInfoItem(
                title: 'Discount',
                value: r'$0',
              ),
              const SizedBox(
                height: 3,
              ),
              const OrderInfoItem(
                title: 'Shipping',
                value: r'$8',
              ),
              const SizedBox(
                height: 17,
              ),
              const Divider(
                thickness: 2,
                color: Color(0xffC7C7C7),
              ),
              const SizedBox(
                height: 15,
              ),
              const TotalPrice(
                title: 'Total',
                value: r'$50.97',
              ),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                title: 'Complete Payment',
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => PaymentDetailsView(),
                  //   ),
                  // );
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => BlocProvider(
                      create: (context) => StripePaymentCubit(
                        CheckoutRepoImpl(
                          StripeService(
                            ApiService(
                              Dio(),
                            ),
                          ),
                        ),
                      ),
                      child: const PaymentMethodsBottomSheet(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
