import 'package:flutter/material.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        const Text(
          "We Taylor Your Website",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          "We Develop Your App",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "About Amiko Developer Studio",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "We thrive on creating values for customers and building trust and transparency between us and customers.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "WE FOCUS ON YOUR BUSINESS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Image(
                width: 320,
                height: 320,
                image: AssetImage("assets/business1.jpg"),
              ),
              const Image(
                width: 320,
                height: 320,
                image: AssetImage("assets/business2.jpg"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
