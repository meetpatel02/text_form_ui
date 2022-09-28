import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String name,Lastname,email,country;
  Details({super.key, required this.name,required this.Lastname, required this.email,required this.country});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text(
            "Details",
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
        ),
        body: Column(children: [
          Text('First Name: $name'),
          Text('Lats Name : $Lastname'),
          Text('email: $email'),
          Text('Country : $country')
        ],)
    );
  }
}
