// import 'dart:math';

// import 'package:flutter/material.dart';

// class ListHobby extends StatefulWidget {
//   const ListHobby({super.key});

//   @override
//   State<ListHobby> createState() => _ListHobbyState();
// }

// class _ListHobbyState extends State<ListHobby> {
//   List hobby = [
//     {id: 1, title: "Cricket", "isdone": false},
//     {id: 2, title: "Football", "isdone": false},
//     {id: 3, title: "Volleyball", "isdone": false},
//     {id: 4, title: "Music", "isdone": false},
//   ];
  
//   static String? title;

//   static int? id;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//         itemCount: hobby.length,
//         itemBuilder: (context, index) {
//           return CheckboxListTile(
//             value: false,
//             title: Text(hobby[title]),
//              onChanged: (value) {});
//         },
//       ),
//     );
//   }
// }
