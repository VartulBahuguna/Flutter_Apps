import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLvl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.png'),
                radius: 40,
                //alignment: Alignment.center,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.red,
            ),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'VARTUAL',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              '$ninjaLvl',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.amberAccent[200],
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30,),
            Text(
              'NINJA E-MAIL',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.mail,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10,),
                Text(
                  'vartual2001@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { setState(() {
          ninjaLvl++;
        }); },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
