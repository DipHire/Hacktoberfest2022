import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hacktoberfest/contributors_screen/user.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:hacktoberfest/util/custom_grid_tile.dart';
import 'package:hacktoberfest/util/custom_tile.dart';

import '../contributorsList.dart';

class ContributorsScreen extends StatefulWidget {
  const ContributorsScreen({super.key});

  @override
  State<ContributorsScreen> createState() => _ContributorsScreenState();
}

class _ContributorsScreenState extends State<ContributorsScreen> {
  List<User> users = getUsers();

  bool _isLinear = true;
  bool _isSearchTextOn = false;

  String _searchName = "";

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isLinear = true;
                        });
                      },
                      icon: (_isLinear == true)
                          ? const Icon(Icons.menu,
                              color: Colors.blueGrey, size: 34.0)
                          : const Icon(Icons.menu,
                              color: Colors.white, size: 24.0),
                    ),
                    const SizedBox(width: 5.0),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _isLinear = false;
                        });
                      },
                      icon: (_isLinear == false)
                          ? const Icon(Icons.grid_view,
                              color: Colors.blueGrey, size: 34.0)
                          : const Icon(Icons.grid_view,
                              color: Colors.white, size: 24.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    (_isSearchTextOn)
                        ? Container(
                            height: 35.0,
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                            color: Colors.white,
                            child: TextField(
                              onChanged: (text) {
                                setState(() {
                                  _searchName = text.trim();
                                });
                              },
                              maxLines: 1,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily:
                                      GoogleFonts.openSans().fontFamily),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type a name...',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily:
                                          GoogleFonts.openSans().fontFamily)),
                            ),
                          )
                        : Container(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _isSearchTextOn = !_isSearchTextOn;
                            _searchName = "";
                          });
                        },
                        icon: (!_isSearchTextOn)
                            ? const Icon(Icons.search, color: Colors.white)
                            : const Icon(Icons.search_off_outlined,
                                color: Colors.white)),
                  ],
                ),
              ],
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

  Widget buildUser(List<User> users) => (_isLinear)
      ? ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) {
            final user = users[index];
            return (user.name.toLowerCase().contains(_searchName.toLowerCase()))
                ? CListTile(Name: user.name, Username: user.username)
                : Container();
          }),
        )
      : GridView.builder(
          itemCount: users.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: ((context, index) {
            final user = users[index];
            return (user.name.toLowerCase().contains(_searchName.toLowerCase()))
                ? CGridTile(Name: user.name, Username: user.username)
                : Container();
          }),
        );
}
