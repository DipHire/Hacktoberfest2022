import 'package:flutter/material.dart';
import 'package:hacktoberfest/contributors_screen/user.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:hacktoberfest/util/custom_tile.dart';

import '../contributorsList.dart';

class ContributorsScreen extends StatefulWidget {
  const ContributorsScreen({super.key});

  @override
  State<ContributorsScreen> createState() => _ContributorsScreenState();
}

class _ContributorsScreenState extends State<ContributorsScreen> {
  List<User> users = getUsers();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(100, 100, 100, 30),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Image(
                image: AssetImage("images/mangatext.png"),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: FittedBox(
                child: Text(
                  'All Contributors',
                  style: kHeadline,
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                // height: 400,
                width: MediaQuery.of(context).size.width,
                child: buildUser(users),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildUser(List<User> users) => ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return CListTile(Name: user.name, Username: user.username);
        }),
      );
}
