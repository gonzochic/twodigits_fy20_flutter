import 'package:flutter/material.dart';

import 'api.dart';

class ConfirmedCases extends StatelessWidget {
  const ConfirmedCases({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cases"),
      ),
      body: FutureBuilder<List<TDState>>(
        future: TDApi.getStatistics(),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              final item = snapshot.data[index];

              return Card(
                child: ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item.name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Active: " + item.active.toString()),
                          Text("Deaths: " + item.deaths.toString()),
                          Text("Recovered: " + item.recovered.toString())
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
