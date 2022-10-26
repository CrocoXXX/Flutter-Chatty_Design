import 'package:chatty_design/theme.dart';
import 'package:flutter/material.dart';

class ReceiverBubble extends StatelessWidget {
  // const ReceiverBubble({Key? key}) : super(key: key);

  final String imageUrl;
  final String text;
  final String time;

  ReceiverBubble({
    required this.imageUrl,
    required this.text,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          Container(
            // width: 180,
            // height: 72,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: backChat,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
    );
  }
}
