import 'package:flutter/material.dart';

class ReO extends StatelessWidget {
  final Function dub;
  ReO(this.dub);

  @override
  Widget build(BuildContext context) {
    return Column(
          children:[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text(
                'Thanks for ordering!',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            FlatButton(
              child: Text('Re-Order'),
              textColor: Colors.red,
              onPressed: dub,
            ),
          ],
        );
  }
}
