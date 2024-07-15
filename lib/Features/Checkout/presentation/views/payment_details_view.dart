import 'package:checkout_app/Core/widgets/build_app_bar.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_details_view_body.dart';
import 'package:flutter/material.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
