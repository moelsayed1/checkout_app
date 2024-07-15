import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          color: Colors.red,
          child: SizedBox(
            height: 60,
            width: 120,
          ),
        ),
      ],
    );
  }
}
