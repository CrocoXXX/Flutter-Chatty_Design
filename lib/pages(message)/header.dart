import 'package:chatty_design/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/group1.png',
                width: 55,
                height: 55,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jakarta Fair',
                    style: titleStyle,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '14,209 members',
                    style: subtitleStyle,
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                'assets/images/call_btn.png',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
