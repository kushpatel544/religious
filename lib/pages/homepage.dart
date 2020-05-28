import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {

  Widget cards(String name,String image, Color color){

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/$image'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final name=['Hinduism','Sikhism','Islam','Christian'];
    final image=['om.png','waheguru.jpg','islam.jpg','christian.jpg'];
    final color=[Colors.orange,Colors.deepOrangeAccent, Color(0xFF007332),Color(0xFFF6EAD8)];
    return SafeArea(
      child: Container(
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:ListView.builder(
            itemCount: name.length,
              itemBuilder: (context,index){
                return cards(name[index],image[index],color[index]);
              },
          ),
        ),
      ),
    );
  }
}
