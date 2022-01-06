import 'package:flutter/material.dart';

const String name = 'John';

class ChatMessage extends StatelessWidget {
  final String text;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ChatMessage({required this.text});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blueGrey,
      elevation: 2.0,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 6),
              child: const CircleAvatar(
                child: Text(name),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5.0),
                  child: Text(text),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
