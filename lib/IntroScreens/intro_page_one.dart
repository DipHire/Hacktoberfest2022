import 'package:flutter/material.dart';
import 'package:hacktoberfest/themes.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Learn",
              style: kHeadline,
            ),
            Text(
              "Learn from Developers from the globe and improve your coding skills ",
              style: kDescription,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
