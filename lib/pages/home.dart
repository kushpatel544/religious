import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Religions(
                  name: 'Hindu',
                  image: 'om.png',
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Religions(
                  name: 'Sikhism',
                  image: 'waheguru.jpg',
                  color: Colors.deepOrangeAccent,
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Religions(
                  name: 'Islam',
                  image: 'islam.jpg',
                  color: Color(0xFF007332),
                ),
                SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                Religions(
                  name: 'Christianity',
                  image: 'christian.jpg',
                  color: Color(0xFFF6EAD8),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Religions extends StatelessWidget {
  final String name;
  final String image;
  final Color color;
  Religions({this.name, this.image, this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/$image'),
            )
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.black,
                ),
                child: Text(
                  'Listen to music',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              width: 2,
            ),
            FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: color,
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  'Read Holy books',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}