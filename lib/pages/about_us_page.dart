import 'package:flutter/material.dart';
import 'package:portfolio_website/components/about_us_body.dart';
import 'package:portfolio_website/components/footer.dart';
import 'package:portfolio_website/components/nav_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(195, 20, 50, 1.0),
              Color.fromRGBO(36, 11, 54, 1.0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: const [
            NavBar(
              isHome: false,
              isAboutUs: true,
              isGetStarted: false,
              isPortfolio: false,
            ),
            AboutUsBody(),
            Footer(),
          ]),
        ),
      ),
    );
  }
}
