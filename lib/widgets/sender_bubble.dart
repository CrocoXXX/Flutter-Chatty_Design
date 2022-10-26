import 'package:chatty_design/theme.dart';
import 'package:flutter/material.dart';

class SenderBubble extends StatelessWidget {
  // const SenderBubble({Key? key}) : super(key: key);

  final String imageUrl;
  final String text;
  final String time;

  SenderBubble({
    required this.imageUrl,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: backChat,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff505C6B),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff505C6B),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }
}
