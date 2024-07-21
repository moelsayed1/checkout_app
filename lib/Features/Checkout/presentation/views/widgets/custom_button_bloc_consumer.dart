import 'package:checkout_app/Core/widgets/custom_button.dart';
import 'package:checkout_app/Features/Checkout/presentation/manager/cubits/stripe_payment_cubit/stripe_payment_cubit.dart';
import 'package:checkout_app/Features/Checkout/presentation/manager/cubits/stripe_payment_cubit/stripe_payment_state.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/payment_success_view.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_methods_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripePaymentCubit, StripePaymentState>(
      listener: (context, state) {
        if (state is StripePaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const PaymentSuccessView(),
            ),
          );
        } else if (state is StripePaymentFailure){
          SnackBar snackBar = SnackBar(content: Text(state.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is StripePaymentLoading ? true : false,
          title: 'Continue',
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => PaymentDetailsView(),
            //   ),
            // );
            showModalBottomSheet(
              context: context,
              builder: (context) => const PaymentMethodsBottomSheet(),
            );
          },
        );
      },
    );
  }
}
