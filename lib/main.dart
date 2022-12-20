import 'package:flutter/material.dart';
import 'package:flutter_application_1/log%20in.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/sign%20up.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      initialRoute: "/",
   routes: {
    "/" :(context) => const Welcome (),
      "/login" :(context) => const Login (),
        "/signup" :(context) => const Signup (),
   },
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}