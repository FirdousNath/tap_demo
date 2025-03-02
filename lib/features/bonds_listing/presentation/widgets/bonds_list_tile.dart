import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';
import 'package:tap_demo/features/bonds_listing/domain/models/bond_model.dart';

class BondsListTile extends StatelessWidget {
  const BondsListTile({required this.bond, required this.query, super.key});
  final BondModel bond;
  final String query;

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
                  _highlightSearchText(
                    bond.bondId,
                    AppTextStyles.description.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    query,
                  ),
                  _highlightSearchText(
                    bond.identifier,
                    AppTextStyles.titleMedium,
                    query,
                  ),
                ],
              ),
              Row(
                children: [
                  _highlightSearchText(bond.rating, AppTextStyles.body, query),

                  Text(' · ', style: AppTextStyles.body),
                  _highlightSearchText(
                    bond.companyName,
                    AppTextStyles.body,
                    query,
                  ),
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

  Widget _highlightSearchText(String text, TextStyle style, String query) {
    if (query.isEmpty) return Text(text, style: style);

    final List<String> words =
        query.split(" ").where((word) => word.isNotEmpty).toList();
    if (words.isEmpty) return Text(text);

    final RegExp regex = RegExp(
      words.map(RegExp.escape).join("|"),
      caseSensitive: false,
    );
    final List<TextSpan> spans = [];
    int start = 0;

    for (final match in regex.allMatches(text)) {
      if (match.start > start) {
        spans.add(
          TextSpan(text: text.substring(start, match.start), style: style),
        );
      }
      spans.add(
        TextSpan(
          text: text.substring(match.start, match.end),
          style: style.copyWith(backgroundColor: errorBgColor),
        ),
      );
      start = match.end;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: style));
    }

    return RichText(text: TextSpan(children: spans));
  }
}
