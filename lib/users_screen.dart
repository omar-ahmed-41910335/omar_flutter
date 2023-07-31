import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    required this.id,
    required this.phone,
    required this.name,
  });
}
class UserScreen extends StatefulWidget {
   const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: ListView.separated(
          itemBuilder: (context,index) => buildUseritem(users[index]),
          separatorBuilder:  (context,index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: users.length,
      )
    );
  }

  List<UserModel> users = [
    UserModel(
       id: 1,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),

    UserModel(
      id: 2,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 1,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 2,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 1,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
    UserModel(
      id: 2,
      name: 'Osama Mansour',
      phone: '+201117842559',
    ),
    UserModel(
      id: 3,
      name: 'Ahmed Ali',
      phone: '+2087856136',
    ),
    UserModel(
      id: 1,
      name: 'Abdullah Mansour',
      phone: '+201115342559',
    ),
  ];
  Widget buildUseritem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ),
        const SizedBox(width: 20,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text(
              '${user.phone}',
              style: TextStyle(color: Colors.grey),),
          ],
        ),
      ],
    ),
  );
}
