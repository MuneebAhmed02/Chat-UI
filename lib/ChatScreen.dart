// ignore_for_file: file_names, non_constant_identifier_names

import 'package:chat/chatmessage.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController txtController = TextEditingController();
  final List<ChatMessage> msgs = [];

  void submit(String text) {
    txtController.clear();
    ChatMessage message = ChatMessage(text: text);
    setState(() {
      msgs.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => msgs[index],
          itemCount: msgs.length,
        )),
        const Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: TextComposer(),
        )
      ],
    );
  }

  Widget TextComposer() {
    return IconTheme(
      data: const IconThemeData(color: Colors.purpleAccent),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration: const InputDecoration(hintText: "Send a message"),
                controller: txtController,
                onSubmitted: submit,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              // ignore: prefer_const_constructors
              child: IconButton(
                  onPressed: () => submit(txtController.text),
                  icon: const Icon(Icons.send)),
            )
          ],
        ),
      ),
    );
  }
}
