import 'package:checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaidBarcodeItem extends StatelessWidget {
  const PaidBarcodeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.barcode,
          size: 50,
        ),
        Container(
          width: 113,
          height: 58,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xff34A853),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              'PAID',
              style: Styles.style24.copyWith(
                color: const Color(0xff34A853),
              ),
            ),
          ),
        ),
      ],
    );
  }
}