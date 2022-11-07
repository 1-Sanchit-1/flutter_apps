import 'package:flutter/material.dart';
import './Homepage.dart';
import '';
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var temp;
  var humidity;
  var currently;
  var description;
  var windspeed;
  var icon;

  Future getWeather() async{
    http.Response response=await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=26.8465108&lon=80.9466832&appid=9170560f53313b59e4a2e6fa2cebd087'));
    var result=jsonDecode(response.body);
    setState(() {
      this.temp=result['main']['temp'];
      this.description=result['weather'][0]['description'];
      this.currently=result['weather'][0]['main'];
      this.humidity=result['main']['humidity'];
      this.windspeed=result['wind']['speed'];
      this.icon=result['weather'][0]['icon'];
      temp=temp-273;
      print(temp);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,

      ),
      // backgroundColor: Colors.tealAccent,
      body:Container(

      )
    );
  }
}

