import 'package:checkout_app/Core/utils/styles.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/card_info_widget.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/paid_barcode_item.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/payment_item_info.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class PaymentSuccessCard extends StatelessWidget {
  const PaymentSuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xffEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              style: Styles.style25,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            SizedBox(
              height: 42,
            ),
            PaymentItemInfo(
              title: 'Date',
              value: '07/17/2024',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: 'Time',
              value: '10:15 PM',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 40,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            TotalPrice(
              title: 'Total',
              value: r'$50.97',
            ),
            SizedBox(
              height: 30,
            ),
            CardInfoWidget(),
            Spacer(),
            PaidBarcodeItem(),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}


