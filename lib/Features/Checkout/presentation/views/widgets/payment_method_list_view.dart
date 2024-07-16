import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethod = const [
    'assets/images/cart.svg',
    'assets/images/paypal.svg',
  ];

  int activeIndex = 0;

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
            child: GestureDetector(
              onTap: () {
                setState(() {});
                activeIndex = index;
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                image: paymentMethod[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
