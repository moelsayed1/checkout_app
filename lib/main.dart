import 'package:checkout_app/Core/utils/api_keys.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {

  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// paymentIntentObject create payment intent(currency, amount)
// init payment sheet(paymentIntentClientSecret)
// display payment sheet

