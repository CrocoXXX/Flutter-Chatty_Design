import 'package:chatty_design/pages/messagepage.dart';
import 'package:chatty_design/theme.dart';
import 'package:chatty_design/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MessagePage(),
            ),
          );
        },
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  // height: 100,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        text: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        text: 'I saw clearly and mig....',
                        time: '2:30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend3.png',
                        name: 'Christy',
                        text: 'Nice to meet you, olen',
                        time: '19:00',
                        unread: true,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Love them',
                        time: '11:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
