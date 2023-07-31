import 'package:flutter/material.dart';
import 'package:omarahmed_flutter/users_screen.dart';


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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserScreen(),

    );
  }
}

