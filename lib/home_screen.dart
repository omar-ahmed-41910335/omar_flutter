import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Icon(
          Icons.menu,
          size: 30,
          color: Colors.white,
        ),
        title: Text(
          'Omar App',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              print('clicked here');
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ),
          IconButton(
            iconSize: 20,
            icon: Text('Exite'),
            onPressed: () {
              print('clicked here');
            },
          ),
        ],
      ),
      body: Text('omar'),
    );
  }
}
