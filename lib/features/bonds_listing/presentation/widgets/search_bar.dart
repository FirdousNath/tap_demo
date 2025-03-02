import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({this.onChanged, super.key});
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: medium),
      padding: const EdgeInsets.symmetric(horizontal: medium),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: tinyBorderRadius,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/search.svg',
            width: medium - nano,
            height: medium - nano,
          ),
          const SizedBox(width: small),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: 'Search by Issuer Name or ISIN',
                border: InputBorder.none,
                hintStyle: AppTextStyles.searchText,
              ),
              style: AppTextStyles.searchText.copyWith(
                color: activeSearchColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
