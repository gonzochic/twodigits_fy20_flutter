import 'package:flutter/material.dart';

class CoronaHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          gradient: LinearGradient(
            colors: [Colors.purple.shade700, Colors.purple.shade400],
            stops: [0.0, 0.7],
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40))),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.public,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Always stay up-to-date with the newest Corona information.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton.icon(
                onPressed: () => print("Click"),
                textColor: Colors.white,
                color: Colors.red,
                icon: Icon(Icons.call),
                label: Text("Call Now"),
              ),
              RaisedButton.icon(
                  onPressed: () => print("Click"),
                  label: Text("Send SMS"),
                  icon: Icon(Icons.sms),
                  textColor: Colors.white,
                  color: Colors.orange)
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
