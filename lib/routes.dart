import 'package:hacktoberfest/Home/HomePage.dart';
import 'package:hacktoberfest/IntroScreens/onBoardingScreen.dart';
import 'package:hacktoberfest/knowmoreScreen/knowmore.dart';
import 'contributors_screen/contributorsScreen.dart';

var appRoutes = {
  // "/": (context) => Knowmore(),
  "/": (context) => const onBoardingScreen(),
  "/Home": (context) => const HomePage(),
  "/Contributors": (context) => const ContributorsScreen(),
  "/Knowmore": (context) => const Knowmore(),
};
