import 'package:flutter/material.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CGridTile extends StatelessWidget {
  final Name;
  final Username;
  const CGridTile({super.key, required this.Name, required this.Username});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrlString('https://github.com/$Username');
      },
      child: Card(
        elevation: 5.0,
        color: Colors.transparent,
        margin: EdgeInsets.zero,
        child: Container(
          height: 150,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff40ddff), width: 5.0),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: const LinearGradient(
              colors: [
                Color(0xff7a82ff),
                Color(0xff58b7ff),
                Color(0xff43d8ff),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Name,
                textAlign: TextAlign.left,
                style: kName.copyWith(fontSize: 30),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: kprimevoid,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Text(
                          Username,
                          style: kUsername,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FaIcon(
                      FontAwesomeIcons.arrowRight,
                      size: 30.0,
                      color: kprimevoid,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
