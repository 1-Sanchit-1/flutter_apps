import 'package:flutter/material.dart';
import 'package:whether_info/loadingscreen.dart';
import './Homepage.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: "/",
      routes: {
        "/" :(context) => Loading(),
        "/Home" : (context) => Home(),
        "/Loading":(context) => Loading(),
    },
    ),
  );
}
class Wheather extends StatefulWidget {
  const Wheather({Key? key}) : super(key: key);

  @override
  State<Wheather> createState() => _WheatherState();
}

class _WheatherState extends State<Wheather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("main "),
      ),
    );
  }
}
