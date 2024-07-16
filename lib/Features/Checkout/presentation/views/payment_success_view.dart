import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_success_view_body.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PaymentSuccessViewBody(),
    );
  }
}
