import 'package:flutter/material.dart';

class TDList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wash your hands",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Wash your hands regulary to prevent being affected.",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.5,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Wear a mask",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Whenever you go outside, don't forget to put on a mask.",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.7,
            color: Colors.purple.shade50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wash your hands",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Wash your hands regulary to prevent being affected by the virus.",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.7,
            color: Colors.purple.shade50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Wash your hands",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Wash your hands regulary to prevent being affected by the virus.",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
