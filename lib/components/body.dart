import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //layout builder will make the nav bar responsive
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopBody();
        } else {
          return MobileBody();
        }
      },
    );
  }
}

//desktop

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Web &",
              style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Mobile Apps",
              style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "We prioritize collaboration with our clients and focus \nto deliver functional and usable products for the society",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.normal),
            ),
          ],
        ),
        const Image(
          width: 320,
          height: 320,
          image: AssetImage("assets/logo.png"),
        )
      ],
    );
  }
}

//mobile

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Image(
          width: 200,
          height: 200,
          image: AssetImage("assets/logo.png"),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Web & Mobile App Developer",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "We prioritize collaboration with our clients and focus \nto deliver functional and usable products for the society",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontStyle: FontStyle.normal),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
              color: Color.fromRGBO(195, 20, 50, 1.0),
              borderRadius: BorderRadius.circular(8)),
          child: const Text(
            "Get Started",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
