import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';

class StatusTag extends StatelessWidget {
  const StatusTag({
    required this.color,
    required this.text,
    required this.chipColor,
    super.key,
  });
  final Color color;
  final String text;
  final Color chipColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: small, vertical: micro),
      decoration: BoxDecoration(
        color: chipColor,
        borderRadius: microBorderRadius,
      ),
      child: Text(text, style: AppTextStyles.bodyBold.copyWith(color: color)),
    );
  }
}
