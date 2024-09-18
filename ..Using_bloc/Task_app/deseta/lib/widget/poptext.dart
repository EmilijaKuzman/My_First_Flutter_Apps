// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:deseta/bloc/task_bloc.dart';
import 'package:deseta/models/task_model.dart';

class PopText extends StatelessWidget {
  String nam;
  Function(String data, String text) ok;
  PopText({
    Key? key,
    required this.nam,
    required this.ok,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = TextEditingController();
    final text = TextEditingController();
    return AlertDialog(
      title: Text(nam),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Text'),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: text,
                  ),
                )),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Date'),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    controller: date,
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Ok'),
          onPressed: () {
            ok(text.text, date.text);
            text.text = '';
            date.text = '';
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
