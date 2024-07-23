import 'dart:developer';

import 'package:checkout_app/Core/utils/api_keys.dart';
import 'package:checkout_app/Core/utils/api_service.dart';
import 'package:checkout_app/Features/Checkout/data/models/customer_payment_intent_model/customer_payment_intent.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_model/payment_intent.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService;

  StripeService(this.apiService);

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {


    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url:'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
    );
  log("${response.statusCode}Res");
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'Flutter Stripe',
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel})
  async {


    var paymentIntentData = await createPaymentIntent(paymentIntentInputModel);

    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentData.clientSecret!);
    await displayPaymentSheet();
  }

  Future<CustomerPaymentIntentModel> createCustomerPaymentIntent(
      CustomerPaymentIntentModel customerIntentModel) async {


    var response = await apiService.post(
      body: customerIntentModel.toJson(),
      contentType: Headers.formUrlEncodedContentType,
      url:'https://api.stripe.com/v1/customers',
      token: ApiKeys.secretKey,
    );
    log("${response.statusCode}Res");
    var customerPaymentIntent = CustomerPaymentIntentModel.fromJson(response.data);
    return customerPaymentIntent;
  }
}
