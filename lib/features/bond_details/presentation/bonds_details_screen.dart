import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/molecules/app_back_button.dart';

class BondsDetailsScreen extends StatelessWidget {
  const BondsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(leading: AppBackButton(), backgroundColor: bgColor),
        body: Center(child: Text('Bonds Details Screen')),
      ),
    );
  }
}
