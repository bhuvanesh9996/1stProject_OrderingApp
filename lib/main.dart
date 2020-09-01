import 'package:flutter/material.dart';
import './cntr.dart';
import './reorder.dart';

void main() => runApp(Ord());

class Ord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OrdState();
  }
}

class _OrdState extends State<Ord> {
  var _tmp = 0;

  final _que = const [
    'Want to order a burger?',
    'Want to order fries?',
    'Want to order a drink?'
  ];

  void sm() {
    setState(() {
      _tmp = 0;
    });

    print('We have recieved your order.');
  }

  void _nxt() {
    setState(() {
      _tmp++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Container(
              width: double.infinity,
              margin: EdgeInsets.all(3),
              child: Text(
                'Give Us Your Order',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          body: _tmp < _que.length
              ? Ctr(_que[_tmp], _nxt)
              : ReO(sm),
      ),
    );
  }
}
