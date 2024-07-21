import 'package:checkout_app/Core/utils/api_keys.dart';
import 'package:checkout_app/Core/utils/api_service.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_model/payment_intent.dart';

class StripeService {
  final ApiService apiService;

  StripeService(this.apiService);

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      token: ApiKeys.secretKey,
    );

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet() async {

    // await Stripe.instance.initPaymentSheet();
  }
}
