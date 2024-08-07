import 'package:checkout_app/Core/utils/styles.dart';
import 'package:checkout_app/Core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.title, this.isLoading = false});

  final void Function()? onPressed;

  final String title;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 73,
      width: 360,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: isLoading ? const CustomLoadingIndicator() : Text(
          title,
          style: Styles.style22,
        ),
      ),
    );
  }
}



