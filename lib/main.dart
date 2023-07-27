import 'package:flutter/material.dart';
import 'Login_screen.dart';

void main() {
  runApp(const MyApp());
  //MyApp() ,, same MyApp app = new MyApp();
}
//stateless
//statefull

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // build is the maneger of the screen, such main maneger of the hole app
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Login_Screen()

    );
  }
}
