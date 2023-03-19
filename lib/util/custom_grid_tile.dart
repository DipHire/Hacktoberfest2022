import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hacktoberfest/themes.dart';
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
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Card(
          elevation: 5.0,
          color: Colors.transparent,
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width * 0.5,
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
            child: Container(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 - 90,
                      child: Text(
                        Name,
                        textAlign: TextAlign.left,
                        style: kName1,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5 - 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.github,
                          color: kprimevoid,
                        ),
                        FaIcon(
                          FontAwesomeIcons.arrowRight,
                          size: 20.0,
                          color: kprimevoid,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
