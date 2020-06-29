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
      body: FutureBuilder<List<Case>>(
        future: CoronaApi.getStatistics(),
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
                  title: Text(item.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Active: " + item.active.toString()),
                      Text("Recovered: " + item.recovered.toString())
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
