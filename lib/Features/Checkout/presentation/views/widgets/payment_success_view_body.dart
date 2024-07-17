import 'package:checkout_app/Features/Checkout/presentation/views/widgets/custom_check_icon.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_success_card.dart';
import 'package:flutter/material.dart';

class PaymentSuccessViewBody extends StatelessWidget {
  const PaymentSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          PaymentSuccessCard(),
          Positioned(
            right: 28,
            left: 28,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}






