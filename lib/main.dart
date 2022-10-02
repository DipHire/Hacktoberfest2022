import 'package:flutter/material.dart';
import 'package:hacktoberfest/routes.dart';
import 'package:hacktoberfest/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacktoberfest 2022',
      routes: appRoutes,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
