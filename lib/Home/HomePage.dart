import 'package:flutter/material.dart';
import 'package:hacktoberfest/util/button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(100, 100, 100, 30),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  image: AssetImage("images/mangatext.png"),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const GradBtn("All Contrubutors", '/Contributors'),
              const SizedBox(
                height: 10.0,
              ),
              const GradBtn("Know more", '/Knowmore'),
            ],
          ),
        ),
      ),
    );
  }
}
