import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 9;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 9.5);
    final barGroup7 = makeGroupData(6, 10, 0.5);
    final barGroup8 = makeGroupData(7, 17, 7.5);
    final barGroup9 = makeGroupData(8, 12, 8.2);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
      barGroup8,
      barGroup9
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blue.withOpacity(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: BarChart(
                  BarChartData(
                    maxY: 20,
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        margin: 20,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'W';
                            case 1:
                              return 'Noe';
                            case 2:
                              return 'Ooe';
                            case 3:
                              return 'T';
                            case 4:
                              return 'K';
                            case 5:
                              return 'St';
                            case 6:
                              return 'S';
                            case 7:
                              return 'V';
                            case 8:
                              return 'Bgld';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(
                        showTitles: true,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        margin: 10,
                        reservedSize: 15,
                        getTitles: (value) {
                          if (value == 0) {
                            return '1K';
                          } else if (value == 10) {
                            return '5K';
                          } else if (value == 19) {
                            return '10K';
                          } else {
                            return '';
                          }
                        },
                      ),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: showingBarGroups,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        y: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }
}
