
import 'package:flutter/material.dart';

const String _name = "Rakib Joarder";

class ChatMessage extends StatelessWidget {

  final String text ;

  ChatMessage({this.text});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color.fromARGB(22,128,128,128),
      padding: const EdgeInsets.all(10.00),
      margin : const EdgeInsets.all(1.00Hi),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              margin: const EdgeInsets.only(right: 10.00),
              child: new CircleAvatar(
                child: new Text(_name[0]),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.only(top: 2.00),
                  child: new Text(_name,
                  style: Theme.of(context).textTheme.subhead,),
                ),
                new Container(
                margin: const EdgeInsets.only(top: 2.0),
                  child: new Text((text)),
              ),
              ],

            ),

        ],
      )
    );
  }
}
