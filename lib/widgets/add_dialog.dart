import 'package:flutter/material.dart';

class AddDialog extends StatelessWidget {
  final Function onPressed;
  final TextEditingController controller;
  const AddDialog({required this.onPressed, required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(8),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 4,
            ),
            ElevatedButton(
                onPressed: () {
                  onPressed();
                },
                child: const Text('Добавить'))
          ],
        ),
      ),
    );
  }
}
