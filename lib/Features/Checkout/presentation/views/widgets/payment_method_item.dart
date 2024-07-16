import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({super.key, required this.isActive, required this.image});

  final bool isActive;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 600),
          height: 62,
          width: 103,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: isActive ? Color(0xff34A853) : Color(0xff808080),
                width: 1.50,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: [
              BoxShadow(
                color: isActive ? Color(0xff34A853) : Colors.white,
                blurRadius: 4,
                offset: Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: SvgPicture.asset(
                image,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
