// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/view/homepage.dart';

// class Loginpage extends StatefulWidget {
//   const Loginpage({super.key});

//   @override
//   State<Loginpage> createState() => _LoginpageState();
// }

// class _LoginpageState extends State<Loginpage> {
//   final emailcontroller = TextEditingController();
//   final passwordcontroller = TextEditingController();
//   void login() {
//     final email = emailcontroller.text;
//     final password = passwordcontroller.text;
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Homepage(email: email, password: password),
//         ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login"),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             controller: emailcontroller,
//             decoration: InputDecoration(
//                 labelText: "Email", border: OutlineInputBorder()),
//           ),
//           TextField(
//             controller: passwordcontroller,
//             decoration: InputDecoration(
//                 labelText: "password", border: OutlineInputBorder()),
//           ),
//           ElevatedButton(onPressed: login, child: Text("Login"))
//         ],
//       ),
//     );
//   }
// }
