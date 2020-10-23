import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY FIRST APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text('Or bhai'),
              Text('KI hal chal'),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    color: Colors.cyan,
                    child: Text(
                      'One',
                      style: TextStyle(fontFamily: 'IndieFlowers'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    color: Colors.pinkAccent,
                    child: Text(
                      'Two',
                      style: TextStyle(fontFamily: 'IndieFlowers'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(40.0),
                    color: Colors.amber,
                    child: Text(
                      'Three',
                      style: TextStyle(fontFamily: 'IndieFlowers'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('CLICK'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
