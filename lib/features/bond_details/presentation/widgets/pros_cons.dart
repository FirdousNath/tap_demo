import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';

class ProsCons extends StatelessWidget {
  const ProsCons({required this.pros, required this.cons, super.key});
  final List<String> pros;
  final List<String> cons;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(medium),
      margin: EdgeInsets.symmetric(horizontal: large - micro, vertical: medium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: smallBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pros & cons', style: AppTextStyles.titleMedium),
          const SizedBox(height: large),
          Text(
            'Pros',
            style: AppTextStyles.titleMedium.copyWith(color: successColor),
          ),
          const SizedBox(height: medium),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: pros.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: large),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: successChipColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(micro),
                      child: Icon(
                        Icons.check,
                        color: successColor,
                        size: medium,
                      ),
                    ),
                    const SizedBox(width: small - nano),
                    Flexible(
                      child: Text(
                        pros[index],
                        style: AppTextStyles.description.copyWith(
                          color: prosColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          Text(
            'Cons',
            style: AppTextStyles.titleMedium.copyWith(color: errorColor),
          ),
          const SizedBox(height: medium),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: large),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: errorBgColor,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(micro),
                      child: Icon(
                        CupertinoIcons.exclamationmark,
                        color: errorColor,
                        size: medium,
                      ),
                    ),
                    const SizedBox(width: small - nano),
                    Flexible(
                      child: Text(
                        cons[index],
                        style: AppTextStyles.description.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
