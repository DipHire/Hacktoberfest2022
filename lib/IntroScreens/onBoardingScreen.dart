import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hacktoberfest/IntroScreens/intro_page_one.dart';
import 'package:hacktoberfest/IntroScreens/intro_page_three.dart';
import 'package:hacktoberfest/IntroScreens/intro_page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => on_BoardingScreenState();
}

class on_BoardingScreenState extends State<onBoardingScreen> {
  //This is a controller to track of which page we are on
  PageController _controller = PageController();

  //keep track if we re o  n last page

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Page View
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              PageOne(),
              PageTwo(),
              PageThree(),
            ],
          ),
          //.dot indicator
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.previousPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.angleLeft,
                      size: 60.0,
                    )),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const SwapEffect(dotColor: Color.fromARGB(255, 187, 81, 81)),
                ),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/Home');
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.solidCircleCheck,
                          size: 60.0,
                        ))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          size: 60.0,
                        ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
