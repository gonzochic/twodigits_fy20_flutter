import 'package:flutter/material.dart';

class Tip {
  final String title;
  final String description;

  const Tip(this.title, this.description);
}

class Tips extends StatelessWidget {
  static const tips = [
    Tip("Wash your hands",
        "Wash your hands regulary to prevent being affected."),
    Tip("Wear a mask",
        "Whenever you go outside, don't forget to put on a mask."),
    Tip("Keep distance", "Keep at least 1.5m distance to others"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _buildListElement(BuildContext context, String title, String content) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
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
                    color: Theme.of(context).primaryColor),
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
