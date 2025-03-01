import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';
import 'package:tap_demo/features/bonds_listing/domain/models/bond_model.dart';

class BondsListTile extends StatelessWidget {
  const BondsListTile({required this.bond, super.key});
  final BondModel bond;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(medium),
      child: Row(
        children: [
          Container(
            width: xxlarge,
            height: xxlarge,
            padding: const EdgeInsets.all(tiny),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(xxlarge - tiny),
              border: Border.all(color: disabledColor, width: 0.5),
            ),
            child: Image.asset('assets/images/logo.png'),
          ),
          const SizedBox(width: medium),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    bond.bondId,
                    style: AppTextStyles.description.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(bond.identifier, style: AppTextStyles.titleMedium),
                ],
              ),
              Row(
                children: [
                  Text(bond.rating, style: AppTextStyles.body),
                  Text(' · ', style: AppTextStyles.body),
                  Text(bond.companyName, style: AppTextStyles.body),
                ],
              ),
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/images/right_chevron.svg',
            height: small,
            width: small,
          ),
        ],
      ),
    );
  }
}
