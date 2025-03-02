import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({
    required this.ebitda,
    required this.revenue,
    this.showRevenueChart = false,
    super.key,
  });
  final List<double> ebitda;
  final List<double> revenue;
  final bool showRevenueChart;

  BarChartGroupData generateGroupData(int x, double ebitda, double revenue) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: ebitda,
          color: activeColor,
          width: 16,
          borderRadius: BorderRadius.zero,
        ),
        BarChartRodData(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(micro),
            topRight: Radius.circular(micro),
          ),
          fromY: ebitda,
          toY: ebitda + revenue,
          color: showRevenueChart ? blueColor : blueChipColor,
          width: 16,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'J';
        break;
      case 1:
        text = 'F';
        break;
      case 2:
        text = 'M';
        break;
      case 3:
        text = 'A';
        break;
      case 4:
        text = 'M';
        break;
      case 5:
        text = 'J';
        break;
      case 6:
        text = 'J';
        break;
      case 7:
        text = 'A';
        break;
      case 8:
        text = 'S';
        break;
      case 9:
        text = 'O';
        break;
      case 10:
        text = 'N';
        break;
      case 11:
        text = 'D';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(meta: meta, child: Text(text, style: style));
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == 0) return SizedBox.shrink();
    return SideTitleWidget(
      meta: meta,
      child: Text("₹${meta.formattedValue}L", style: AppTextStyles.body),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AspectRatio(
        aspectRatio: 2,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceBetween,
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitles,
                  reservedSize: xlarge,
                ),
              ),
              rightTitles: const AxisTitles(),
              topTitles: const AxisTitles(),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: bottomTitles,
                  reservedSize: 20,
                ),
              ),
            ),
            barTouchData: BarTouchData(enabled: false),
            borderData: FlBorderData(show: false),
            gridData: const FlGridData(show: false),
            barGroups: List.generate(
              ebitda.length,
              (i) => generateGroupData(i, ebitda[i], revenue[i]),
            ),
            maxY: 3,
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(y: 1, color: disabledColor, strokeWidth: 0.5),
                HorizontalLine(y: 2, color: disabledColor, strokeWidth: 0.5),
                HorizontalLine(y: 3, color: disabledColor, strokeWidth: 0.5),

                HorizontalLine(y: 0, color: disabledColor, strokeWidth: 0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
