import 'package:checkout_app/Core/utils/styles.dart';
import 'package:checkout_app/Features/Checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
        leading: Center(
          child: SvgPicture.asset(
            'assets/images/arrow.svg',
            height: 24,
          ),
        ),
      ),
      body: MyCartViewBody(),
    );
  }
}
