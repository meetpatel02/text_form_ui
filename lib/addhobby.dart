import 'package:flutter/material.dart';

import 'hobbyform.dart';

class Addtohobby extends StatefulWidget {
  const Addtohobby({super.key});

  @override
  State<Addtohobby> createState() => _AddtohobbyState();
}

class _AddtohobbyState extends State<Addtohobby> {
  String? title;

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add Todo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 8),
            HobbyFormWidget(
              onChangedTitle: (title) => setState(() => this.title = title),
              onSavedHobby: () {},
            ),
          ],
        ),
      );
}
