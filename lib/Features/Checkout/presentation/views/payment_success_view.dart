import 'package:checkout_app/Core/widgets/build_app_bar.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_success_view_body.dart';
import 'package:flutter/material.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
          context: context
        ),
        body: Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            child: PaymentSuccessViewBody(),
          ),
        ),
      ),
    );
  }
}
