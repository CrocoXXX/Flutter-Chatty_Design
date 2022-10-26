import 'package:chatty_design/widgets/receiver_bubble.dart';
import 'package:chatty_design/widgets/sender_bubble.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend2.png',
            text: 'Hey, Peter! How’s it going? ',
            time: '2:30',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend1.png',
            text: 'Hi, Anna! Good. How are you?',
            time: '3:11',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend2.png',
            text: 'Great! Felice, this is Peter.',
            time: '3:30',
          ),
          SenderBubble(
            imageUrl: 'assets/images/picProfile.png',
            text: 'Thinking about how to deal\nwith this client from hell...',
            time: '22:08',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend3.png',
            text: 'Love them',
            time: '23:30',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend3.png',
            text: 'Love them',
            time: '23:30',
          ),
          SenderBubble(
            imageUrl: 'assets/images/picProfile.png',
            text: 'Thinking about how to deal\nwith this client from hell...',
            time: '22:08',
          ),
        ],
      ),
    );
  }
}
