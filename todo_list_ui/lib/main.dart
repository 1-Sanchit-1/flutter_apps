// import 'dart:js';

import 'package:flutter/material.dart';

void main()=>runApp(

   const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Myapp(),
   ),
);

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Todo List"),
        elevation: 30,
        // shadowColor: Colors.brown,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Colors.red,
              Colors.black87,
              Colors.lightBlueAccent,
            ],
          )
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 2,),
              Text("Create",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 2,
              ),),
              SizedBox(height: 8,),
              Text("New Todo",style:
              TextStyle(
                color: Colors.white,
                fontSize: 22,
                letterSpacing: 2,
              ),),
              SizedBox(height: 18,),
             lable("Task Tittle"),
          SizedBox(height: 18,),
          tittle(),
              SizedBox(height: 18,),
            lable("Task Tag"),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChipData("Easy",0xffff6d12),
                ChipData("Medium",0xccff2345),
                ChipData("Hard",0xfcde1231),

              ],
            ),
            SizedBox(height: 18,),
              lable("Discreption"),
              SizedBox(height: 18,),
              Discreption(),
              SizedBox(height: 18,),
              lable("Discreption Tag"),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipData("Study",0xff2664fa),
                  ChipData("Workout",0xfa9234db),
                  ChipData("Playing",0xff8678ac),

                ],
              ),
              SizedBox(height:12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChipData("Work",0xfc2222af),
                  ChipData("Travling",0xfe112dcc),
                  ChipData("Notic",0xaa3456ff),

                ],
              ),
              SizedBox(height: 18,),
              button(),
              SizedBox(height: 18,),
            ],
          ),
        ),
      ),

    );;
  }

}
Widget button(){
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.cyanAccent,
    ),
    child: Center(
      child: Text("Add Todo",style:
        TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),
  ),
  );
}

Widget Discreption(){
  return Container(
    height: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Colors.black12,
    ),      child: TextFormField(
    style: TextStyle(
      color: Colors.white,
      fontSize: 27,
      fontWeight: FontWeight.w600,
    ),
    decoration: InputDecoration(
      hintText: "Discreption",
      border:InputBorder.none,
      hintStyle:TextStyle(
        color: Colors.black87,
        fontSize: 19,
      ),
    ),
  ),
  );
}

Widget ChipData(String data,int col)
{
  return Chip(label: Text(data,
    style: TextStyle(
      color: Colors.white,
      fontSize: 17,
    ),

  ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    backgroundColor: Color(col),
    elevation: 10,
    shadowColor: Colors.white,
    labelPadding: EdgeInsets.symmetric(horizontal: 17 ,vertical: 7),
    );
}


Widget tittle(){

   return Container(
     height: 60,
     // width: MediaQuery.of().size.width,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(12),
       color: Colors.black12,
     ),      child: TextFormField(
         style: TextStyle(
           color: Colors.white,
           fontSize: 27,
           fontWeight: FontWeight.w600,
         ),
       decoration: InputDecoration(
         hintText: "Task tittle",
         border:InputBorder.none,
         hintStyle:TextStyle(
           color: Colors.grey,
           fontSize: 17,
         ),
       ),
     ),
   );
}

Widget lable(String label) {
  return Text(label,
    style: TextStyle(
      color: Colors.white,
     fontWeight: FontWeight.w600,
     fontSize: 11,
     ),

  );
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart' as f_a;
// import 'package:firebase_core/firebase_core.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(fire());
// }
//
// class fire extends StatefulWidget {
//   const fire({Key? key}) : super(key: key);
//
//   @override
//   State<fire> createState() => _fireState();
// }
//
// class _fireState extends State<fire> {
//   f_a.FirebaseAuth firebaseAuth = f_a.FirebaseAuth.instance ;
//
//   void sign() async {
//     try{
//       await firebaseAuth.createUserWithEmailAndPassword(email: "sanchit@gmail.com", password:"12345678");
//     }
//     catch(e)
//     {
//       print(e);
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Firebase",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Firebase"),
//           elevation: 20,
//           shadowColor: Colors.black,
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: (){
//               sign();
//             },
//             child: Text("sign up"),
//           ),
//         ),
//       ),
//     );
//   }
// }


