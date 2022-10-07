import 'package:flutter/material.dart';
import 'package:hacktoberfest/contributors_screen/user.dart';
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
        body: NestedScrollView(
          headerSliverBuilder: (c, box) => [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.fromLTRB(100, 100, 100, 30),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  image: AssetImage("images/mangatext.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              titleSpacing: 0,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              // centerTitle: true,
              elevation: 0,
              centerTitle: true,
              title: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'All Contributors',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/bg.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ],
          body: buildUser(users),
        ),
      ),
    );
  }

  Widget buildUser(List<User> users) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return CListTile(Name: user.name, Username: user.username);
        },
      );
}
