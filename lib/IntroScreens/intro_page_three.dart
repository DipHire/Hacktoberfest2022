import 'package:flutter/material.dart';
import '../themes.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Win",
            style: kHeadline,
          ),
          Text(
            "Win amazing Swags from Digital Ocean and Hacktoberfest",
            style: kDescription,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
