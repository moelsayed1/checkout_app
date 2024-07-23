import 'dart:developer';
import 'package:checkout_app/Features/Checkout/data/models/payment_intent_input_model/payment_intent_input_model.dart';
import 'package:checkout_app/Features/Checkout/data/repos/checkout_repo.dart';
import 'package:checkout_app/Features/Checkout/presentation/manager/cubits/stripe_payment_cubit/stripe_payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StripePaymentCubit extends Cubit<StripePaymentState> {
  StripePaymentCubit(this.checkoutRepo) : super(StripePaymentInitial());

  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(StripePaymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (failure) => emit(
         StripePaymentFailure("Payment failed"),
      ),
      (success) => emit(
        StripePaymentSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<StripePaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
