import 'package:checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/master_card.svg',
          ),
          const SizedBox(
            width: 23,
          ),
          const Text(
            'Credit Card Mastercard **78 ',
            style: Styles.style18,
          ),
        ],
      ),
    );
  }
}