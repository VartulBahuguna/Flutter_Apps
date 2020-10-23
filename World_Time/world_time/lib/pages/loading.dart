import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    print('3Hey bruhh');
    WorldTime wt =
        WorldTime(location: 'Kolkata', flag: 'India.png', url: 'Asia/Kolkata');
    await wt.getTime();
    print('4Hey bruhh');
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': wt.location,
      'flag': wt.flag,
      'time': wt.time,
      'isDay':wt.isDay,
    });
  }

  @override
  void initState() {
    super.initState();
    print('1Hey bruhh');
    setupWorldTime();
    print('2Hey bruhh');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          ),
        )
    );
  }
}
