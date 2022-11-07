// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart' as f_a;
// import 'package:firebase_core/firebase_core.dart';
//
// void main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp();
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
//     print(e);
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
//              child: Text("sign up"),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
