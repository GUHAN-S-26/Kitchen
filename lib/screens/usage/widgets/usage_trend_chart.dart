import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../core/theme/app_colors.dart';

class UsageTrendChart extends StatelessWidget {
  const UsageTrendChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.02),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Usage Trend',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'By Weight (kg)',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.keyboard_arrow_down, size: 14),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: true,
                    horizontalInterval: 1,
                    verticalInterval: 1,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.shade200,
                        strokeWidth: 1,
                        dashArray: [5, 5],
                      );
                    },
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: Colors.grey.shade200,
                        strokeWidth: 1,
                        dashArray: [5, 5],
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        interval: 1,
                        getTitlesWidget: bottomTitleWidgets,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: leftTitleWidgets,
                        reservedSize: 24,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 4,
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 0.8),
                        FlSpot(1, 1.4),
                        FlSpot(2, 2.0),
                        FlSpot(3, 3.2),
                        FlSpot(4, 2.4),
                        FlSpot(5, 1.4),
                        FlSpot(6, 0.8),
                      ],
                      isCurved: true,
                      color: AppColors.primaryGreen,
                      barWidth: 2,
                      isStrokeCapRound: true,
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: AppColors.primaryGreen,
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                          );
                        },
                      ),
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            AppColors.primaryGreen.withOpacity(0.3),
                            AppColors.primaryGreen.withOpacity(0.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ],
                  lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                      getTooltipColor: (touchedSpot) => AppColors.textPrimary,
                      getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                        return touchedBarSpots.map((barSpot) {
                          final flSpot = barSpot;
                          final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                          return LineTooltipItem(
                            '${days[flSpot.x.toInt()]}\n',
                            const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                            children: [
                              TextSpan(
                                text: '${flSpot.y} kg',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: AppColors.textSecondary,
      fontWeight: FontWeight.w500,
      fontSize: 10,
    );
    Widget text;
    switch (value.toInt()) {
      case 0: text = const Text('Mon', style: style); break;
      case 1: text = const Text('Tue', style: style); break;
      case 2: text = const Text('Wed', style: style); break;
      case 3: text = const Text('Thu', style: style); break;
      case 4: text = const Text('Fri', style: style); break;
      case 5: text = const Text('Sat', style: style); break;
      case 6: text = const Text('Sun', style: style); break;
      default: text = const Text('', style: style); break;
    }
    return SideTitleWidget(
      meta: meta,
      space: 10,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: AppColors.textSecondary,
      fontWeight: FontWeight.w500,
      fontSize: 10,
    );
    if (value == 0 || value == 1 || value == 2 || value == 3 || value == 4) {
      return Text(value.toInt().toString(), style: style, textAlign: TextAlign.left);
    }
    return Container();
  }
}
