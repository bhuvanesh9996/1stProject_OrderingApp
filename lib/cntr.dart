import 'package:flutter/material.dart';

class Ctr extends StatelessWidget {
  final String txt;
  final Function selectHandler;
  Ctr(this.txt, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            txt,
            style: TextStyle(fontSize: 27),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
            color: Colors.blue, child: Text('Yes'), onPressed: selectHandler),
        RaisedButton(
            color: Colors.blue, child: Text('No'), onPressed: selectHandler),
      ],
    );
  }
}
