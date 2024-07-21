import 'package:checkout_app/Core/errors/failure.dart';
import 'package:checkout_app/Core/utils/stripe_service.dart';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout_app/Features/Checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeService stripeService;

  CheckoutRepoImpl(this.stripeService);

  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);

      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
