import 'package:flutter/material.dart';

class TDList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          _buildListElement(context, "Wash your hands",
              "Wash your hands regulary to prevent being affected."),
          _buildListElement(context, "Wear a mask",
              "Whenever you go outside, don't forget to put on a mask."),
          _buildListElement(context, "Wash your hands",
              "Wash your hands regulary to prevent being affected."),
          _buildListElement(context, "Wash your hands",
              "Wash your hands regulary to prevent being affected."),
        ],
      ),
    );
  }

  _buildListElement(BuildContext context, String title, String content) {
    return Container(
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
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
              Text(
                content,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
