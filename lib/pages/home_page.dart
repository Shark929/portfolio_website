import 'package:flutter/material.dart';
import 'package:portfolio_website/components/body.dart';
import 'package:portfolio_website/components/footer.dart';
import 'package:portfolio_website/components/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final image =
        AssetImage("assets/images/logo.png", package: 'portfolio_website');
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
        child: Column(children: const [
          NavBar(),
          Spacer(),
          Body(),
          Spacer(),
          Footer(),
        ]),
      ),
    );
  }
}
