import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TDChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TDChartState();
}

class TDChartState extends State<TDChart> {
  List<BarChartGroupData> showingBarGroups;

  @override
  void initState() {
    super.initState();

    showingBarGroups = [
      makeGroupData(0, 5, 12),
      makeGroupData(1, 16, 12),
      makeGroupData(2, 18, 5),
      makeGroupData(3, 20, 16),
      makeGroupData(4, 17, 6),
      makeGroupData(5, 19, 9.5),
      makeGroupData(6, 10, 0.5),
      makeGroupData(7, 17, 7.5),
      makeGroupData(8, 12, 8.2)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blue.withOpacity(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: BarChart(
                  BarChartData(
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
                          //return country[value.toInt()].shortname
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
    return BarChartGroupData(x: x, barRods: [
      BarChartRodData(y: y1, color: Colors.lightGreen),
      BarChartRodData(y: y2, color: Colors.red),
    ]);
  }
}
