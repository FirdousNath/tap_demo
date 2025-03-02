import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';
import 'package:tap_demo/features/bond_details/domain/models/bond_details_model.dart';
import 'package:tap_demo/features/bond_details/presentation/widgets/bar_chart.dart';

class IssuerDetails extends StatelessWidget {
  const IssuerDetails({
    required this.bondDetails,
    this.showRevenueChart = false,
    required this.onRevenueChartTap,
    super.key,
  });
  final BondDetailsModel bondDetails;
  final bool showRevenueChart;
  final void Function(bool) onRevenueChartTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: large - micro,
            vertical: medium,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: smallBorderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: large),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: large + micro,
                    ),
                    child: Text(
                      'COMPANY FINANCIALS',
                      style: AppTextStyles.bodyBold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: bgColor,
                      borderRadius: mediumBorderRadius,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: micro,
                      vertical: micro,
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => onRevenueChartTap(false),
                          child: Container(
                            decoration: BoxDecoration(
                              color: showRevenueChart ? bgColor : Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(small),
                                bottomLeft: Radius.circular(small),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: small,
                              vertical: micro,
                            ),
                            child: Text(
                              'EBITDA',
                              style: AppTextStyles.body.copyWith(
                                color:
                                    showRevenueChart
                                        ? disabledTabColor
                                        : activeColor,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () => onRevenueChartTap(true),
                          child: Container(
                            decoration: BoxDecoration(
                              color: showRevenueChart ? Colors.white : bgColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(small),
                                bottomRight: Radius.circular(small),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: small,
                              vertical: micro,
                            ),
                            child: Text(
                              'Revenue',
                              style: AppTextStyles.body.copyWith(
                                color:
                                    showRevenueChart
                                        ? activeColor
                                        : disabledTabColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: small),
                ],
              ),
              showRevenueChart
                  ? BarChartSample(
                    ebitda: List.filled(12, 0),
                    revenue: List.filled(12, 1.5),
                    showRevenueChart: showRevenueChart,
                  )
                  : BarChartSample(
                    ebitda: List.filled(12, 1),
                    revenue: List.filled(12, 0.5),
                    showRevenueChart: showRevenueChart,
                  ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: large - micro,
            vertical: medium,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: smallBorderRadius,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(medium),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/contacts.svg'),
                    const SizedBox(width: nano),
                    Text('Issuer Details', style: AppTextStyles.titleSemiBold),
                  ],
                ),
              ),
              Divider(color: bgColor, height: 0.5),
              const SizedBox(height: large),
              Padding(
                padding: EdgeInsets.all(medium),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Issuer name",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.name,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Type of Issuer",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.type,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Sector",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.sector,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Industry",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.industry,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Issuer nature",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.nature,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Corporate Identity Number (CIN)",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.cin,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Name of the Lead Manager",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.manager,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Registrar",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.registrar,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                    Text(
                      "Name of Debenture Trustee",
                      style: AppTextStyles.titleSemiBold.copyWith(
                        color: blueColor,
                      ),
                    ),
                    const SizedBox(height: tiny - nano),
                    Text(
                      bondDetails.issuer.trustee,
                      style: AppTextStyles.description.copyWith(
                        color: activeColor,
                      ),
                    ),
                    const SizedBox(height: xlarge - nano),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
