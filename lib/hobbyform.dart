import 'package:flutter/material.dart';

class HobbyFormWidget extends StatelessWidget {
  final String title;

  final ValueChanged<String> onChangedTitle;

  final VoidCallback onSavedHobby;

  const HobbyFormWidget({
    Key? key,
    this.title = '',
    required this.onChangedTitle,
    required this.onSavedHobby,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            const SizedBox(height: 8),
            const SizedBox(height: 32),
            buildButton(),
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        onChanged: onChangedTitle,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );

  Widget buildButton() => SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          onPressed: onSavedHobby,
          child: const Text('Save'),
        ),
      );
}
