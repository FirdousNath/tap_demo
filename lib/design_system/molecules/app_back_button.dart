import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        margin: const EdgeInsets.only(left: medium),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: disabledColor,

              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
