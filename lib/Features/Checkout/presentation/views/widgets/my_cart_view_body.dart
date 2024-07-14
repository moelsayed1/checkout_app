import 'package:checkout_app/Features/Checkout/presentation/views/widgets/order_info_item.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

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
              Image.asset('assets/images/Group 6.png'),
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
            ],
          ),
        ),
      ),
    );
  }
}
