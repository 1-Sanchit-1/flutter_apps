import 'package:flutter/material.dart';
import 'package:whether_info/loadingscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("san"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              child: ElevatedButton(
                child: Text("san"),
                onPressed: (){
                   Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Loading()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
