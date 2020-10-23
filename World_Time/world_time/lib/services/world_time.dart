import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;//location name for url
  String time;// the time in that location
  String flag; // url to an asset flag icon
  String url;// location url for API endpoint
  bool isDay;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      // print(data);

      String datetime = data['datetime'];
      String offset = data['utc_offset'];

      int addHr = int.parse(offset.substring(1,3));
      int addMin = int.parse(offset.substring(4,6));

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: addHr,minutes: addMin));

      isDay = now.hour > 6 && now.hour < 19 ? true : false;
      time = DateFormat.jm().format(now);
    }
    catch(e){

      print("caught error: " + e.toString());
      print("caught error: $e");

      time = 'Error getting data';
    }

  }
}
