import 'package:flutter/material.dart';
import '../themes.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

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
              "Contribute",
              style: kHeadline,
            ),
            Text(
              "Build cool Projects with other developers and Contribute to open source",
              style: kDescription,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
