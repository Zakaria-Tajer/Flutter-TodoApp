import 'package:flutter/material.dart';

import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final time;
  VoidCallback onSave;
  VoidCallback onCancel;
  VoidCallback chooseTime;

  DialogBox({
    super.key,
    required this.controller,
    required this.time,
    required this.onSave,
    required this.onCancel,
    required this.chooseTime,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            MyButton(
              text: "choose time",
              onPressed: chooseTime,
              color: Color.fromARGB(255, 0, 0, 0),
            ),

            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave,color:Color.fromARGB(255, 67, 132, 51)),

                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel,color: Color.fromRGBO(255, 33, 33, 1),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
