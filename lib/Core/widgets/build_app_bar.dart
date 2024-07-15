import 'package:checkout_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({required final String title}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title,
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
    leading: Center(
      child: SvgPicture.asset(
        'assets/images/arrow.svg',
        height: 24,
      ),
    ),
  );
}