import 'package:checkout_app/Core/widgets/custom_button.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/custom_credit_card.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_method_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final cardHolderKey = GlobalKey<FormFieldState<String>>();


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: PaymentMethodListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
            cardHolderKey: cardHolderKey,
          ),
        ),
        SliverFillRemaining(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
              child: CustomButton(
                title: 'Pay',
                onPressed: () {
                  if (formKey.currentState!.validate() && cardHolderKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    cardHolderKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}


