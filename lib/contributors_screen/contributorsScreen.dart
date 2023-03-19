import 'package:flutter/material.dart';
import 'package:hacktoberfest/contributors_screen/user.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:hacktoberfest/util/custom_tile.dart';

import '../contributorsList.dart';
import '../util/custom_grid_tile.dart';

class ContributorsScreen extends StatefulWidget {
  const ContributorsScreen({super.key});

  @override
  State<ContributorsScreen> createState() => _ContributorsScreenState();
}

class _ContributorsScreenState extends State<ContributorsScreen> {
  List<User> users = getUsers();
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            //toggle button for list and grid view
            IconButton(
              icon: Icon(isGridView ? Icons.list : Icons.grid_view),
              onPressed: () {
                setState(() {
                  isGridView = !isGridView;
                });
              },
            ),
          ],
        ),
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
                child: isGridView
                    ? buildUserGridView(users)
                    : buildUserListView(users),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildUserListView(List<User> users) => ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return CListTile(Name: user.name, Username: user.username);
        }),
      );

  Widget buildUserGridView(List<User> users) => GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return CGridTile(Name: user.name, Username: user.username);
        }),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
      );
}
