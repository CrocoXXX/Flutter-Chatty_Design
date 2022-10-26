import 'package:chatty_design/pages(message)/body.dart';
import 'package:chatty_design/pages(message)/chat_input.dart';
import 'package:chatty_design/pages(message)/header.dart';
import 'package:chatty_design/theme.dart';
import 'package:chatty_design/widgets/receiver_bubble.dart';
import 'package:chatty_design/widgets/sender_bubble.dart';
import 'package:flutter/material.dart';
// import 'package:chatty_design/theme.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      floatingActionButton: ChatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Header(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
