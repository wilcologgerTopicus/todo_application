import 'package:flutter/material.dart';

class AddItemDing extends StatelessWidget {
  const AddItemDing({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Enter your username',
          ),
        ),
      ),
    );
  }
}
