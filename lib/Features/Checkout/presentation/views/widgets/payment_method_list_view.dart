import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatelessWidget {
  const PaymentMethodListView({super.key});

  final List<String> paymentMethod = const [
    'assets/images/cart.svg',
    'assets/images/paypal.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethod.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PaymentMethodItem(
              isActive: false,
              image: paymentMethod[index],
            ),
          );
        },
      ),
    );
  }
}
