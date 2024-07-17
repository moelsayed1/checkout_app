import 'package:checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({required BuildContext context, final String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    leading: Center(
      child: IconButton(
        onPressed: () {
          Navigator.pop(context); // Now you have the context
        },
        icon: SvgPicture.asset(
          'assets/images/arrow.svg',
          height: 24,
        ),
      ),
    ),
  );
}
