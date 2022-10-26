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
            imageUrl: 'assets/images/friend1.png',
            text: 'Hey, Guys! How’s it going? ',
            time: '2:30',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend2.png',
            text: 'Hi, Peter! Pretty good.',
            time: '3:11',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend3.png',
            text: 'It’s awful guys. \nI’ve been busy all the time',
            time: '3:30',
          ),
          SenderBubble(
            imageUrl: 'assets/images/picProfile.png',
            text: 'It’s going great, Peter',
            time: '22:08',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend1.png',
            text: 'You have a lot of work Christy',
            time: '23:30',
          ),
          ReceiverBubble(
            imageUrl: 'assets/images/friend2.png',
            text: 'Yeah, \nyou better rest for a while Christy',
            time: '23:30',
          ),
          SenderBubble(
            imageUrl: 'assets/images/picProfile.png',
            text: 'Thinking about how we go on \nvacation.Peter?',
            time: '22:08',
          ),
        ],
      ),
    );
  }
}
