import 'package:checkout_app/Features/Checkout/presentation/views/widgets/custom_button_bloc_consumer.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            PaymentMethodListView(),
            SizedBox(
              height: 32,
            ),
            CustomButtonBlocConsumer(),
          ],
        ),
      ),
    );
  }
}


