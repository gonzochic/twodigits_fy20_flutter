import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'api.dart';

class TDChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.blue.withOpacity(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FutureBuilder<List<TDState>>(
                    future: TDApi.getStatistics(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Center(child: CircularProgressIndicator());
                      return BarChart(
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
                                return snapshot.data[value.toInt()]
                                    .getAbbreviation();
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
                                if (value % 100 == 0) {
                                  return value.toInt().toString();
                                }
                                return "";
                              },
                            ),
                          ),
                          borderData: FlBorderData(
                            show: false,
                          ),
                          barGroups: snapshot.data
                              .map((state) =>
                                  BarChartGroupData(x: state.id, barRods: [
                                    BarChartRodData(
                                        y: state.active.toDouble(),
                                        color: Colors.orangeAccent),
                                    BarChartRodData(
                                        y: state.deaths.toDouble(),
                                        color: Colors.red),
                                  ]))
                              .toList(),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// barGroups: snapshot.data
//                               .map((state) =>
//                                   BarChartGroupData(x: state.id, barRods: [
//                                     BarChartRodData(
//                                         y: state.deaths /
//                                             (state.active +
//                                                 state.deaths +
//                                                 state.recovered),
//                                         color: Colors.orangeAccent),
//                                   ]))
//                               .toList(),
