import 'package:flutter/material.dart';
import 'ChatScreen.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Chat App UI'),
          toolbarHeight: 70,
          backgroundColor: Colors.purple,
          shadowColor: Colors.grey,
        ),
        body: ChatScreen());
  }
}
