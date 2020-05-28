import 'package:flutter/material.dart';

import 'createRoute.dart';
import 'nitnem.dart';

class SikhPath extends StatefulWidget {
  @override
  _SikhPathState createState() => _SikhPathState();
}

class _SikhPathState extends State<SikhPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Container(
          child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(child: Image.asset('images/bani.jpg')),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                kirtans(
                  name: 'ਨਿਤਨੇਮ',
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                kirtans(
                  name: 'ਸੁਖਮਨੀ ਸਾਹਿਬ',
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                kirtans(
                  name: 'ਅਰਦਾਸ',
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                kirtans(
                  name: 'ਸ਼ੀ੍ ਗੁਰੂ ਗ੍ੰਥ ਸਾਹਿਬ ਜੀ',
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class kirtans extends StatelessWidget {
  final String name;
  kirtans({this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: FlatButton(
        onPressed: () {
          Navigator.of(context).push(createRoute(Nitnem()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                  fontFamily: 'MuktaMahee',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }
}
