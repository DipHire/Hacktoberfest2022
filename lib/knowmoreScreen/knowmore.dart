import 'package:flutter/material.dart';
import 'package:hacktoberfest/themes.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Knowmore extends StatelessWidget {
  const Knowmore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/bg.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: GlassmorphicContainer(
                    height: MediaQuery.of(context).size.height,
                    width: 450.0,
                    borderRadius: 30.0,
                    blur: 15,
                    alignment: Alignment.center,
                    border: 2,
                    linearGradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white38.withOpacity(0.2)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderGradient: LinearGradient(colors: [
                      Colors.white24.withOpacity(0.2),
                      Colors.white70.withOpacity(0.2)
                    ]),
                    child: Column(children: [
                      Text(
                        'What is Hacktoberfest?'.toUpperCase(),
                        style: kHeadline,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          'Hacktoberfest is a month-long celebration of open-source software by DigitalOcean that encourages participation in giving back to the open-source community. Developers get involved by completing pull requests, participating in events, and donating to open source projects. During this event, anyone can support open source by contributing changes and earn limited-edition swag.',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 11,
                          style: kDescription,
                          textAlign: TextAlign.center),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: GlassmorphicContainer(
                    height: MediaQuery.of(context).size.height,
                    width: 450.0,
                    borderRadius: 30.0,
                    blur: 15,
                    alignment: Alignment.center,
                    border: 2,
                    linearGradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white38.withOpacity(0.2)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                    borderGradient: LinearGradient(colors: [
                      Colors.white24.withOpacity(0.2),
                      Colors.white70.withOpacity(0.2)
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'What is Opensource?'.toUpperCase(),
                              style: kHeadline,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            Text(
                                'Open source software is software that’s freely available to use and modify, typically shared via a public repository hosting service like Github. Projects that follow the open source model usually thrive through contributions from the developer community, and may allow for redistribution depending on which open source license they have adopted.',
                                style: kDescription,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 11,
                                textAlign: TextAlign.center),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
