import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        color: const Color(0xffFFFFFF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Type Message.....',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: Color(0xff999999),
            ),
          ),
          Image.asset(
            'assets/images/send_btn.png',
            width: 35,
          ),
        ],
      ),
    );
  }
}
