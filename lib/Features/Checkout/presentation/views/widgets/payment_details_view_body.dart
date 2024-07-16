import 'package:checkout_app/Features/Checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodListView(),
        CustomCreditCard(),
      ],
    );
  }
}


