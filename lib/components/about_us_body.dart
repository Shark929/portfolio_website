import 'package:flutter/material.dart';
import 'package:portfolio_website/components/testimonial_container.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //layout builder will make the nav bar responsive
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return AboutUsDesktop();
        } else {
          return AboutUsMobile();
        }
      },
    );
  }
}

class AboutUsDesktop extends StatelessWidget {
  const AboutUsDesktop({Key? key}) : super(key: key);

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
                  "We thrive on creating values for customers and building trust and transparency between us and clients.",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "WE FOCUS ON \nYOUR BUSINESS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "We believe different types of business require \ndifferent website and platform \nto showcast the business model.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const Image(
                width: 300,
                height: 320,
                image: AssetImage("assets/business1.jpg"),
              ),
              const Image(
                width: 300,
                height: 320,
                image: AssetImage("assets/business2.jpg"),
              )
            ],
          ),
        ),
        Container(
          color: Colors.white38,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          //height: 350,
          width: MediaQuery.of(context).size.width,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Testimonials",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TestimodialContainer(
                    isMobile: false,
                    name: "Choon Kiat",
                    description:
                        "We are looking forward for our another collaboration with Amiko Developer Studio",
                  ),
                  TestimodialContainer(
                    isMobile: false,
                    name: "Lim Ket",
                    description:
                        "Amiko Developer Studio is the best Web and Mobile App developer so far",
                  ),
                  TestimodialContainer(
                    isMobile: false,
                    name: "Ivan Lim",
                    description:
                        "Amiko Developer Studio really put their client's priority in the first place!",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Text(
            "We Taylor Your Website",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "We Develop Your App",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "About Amiko Developer Studio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "We thrive on creating values for customers and building trust and transparency between us and clients.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: const [
              SizedBox(
                height: 50,
              ),
              Text(
                "WE FOCUS ON YOUR BUSINESS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "We believe different types of business require different website and platform to showcast the business model.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                // width: 400,
                height: 320,
                image: AssetImage("assets/business1.jpg"),
              ),
              Image(
                // width: 400,
                height: 320,
                image: AssetImage("assets/business2.jpg"),
              )
            ],
          ),
          Container(
            color: Colors.white38,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            //height: 350,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                Text(
                  "Testimonials",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  "What clients talk about us",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                TestimodialContainer(
                  isMobile: true,
                  name: "Choon Kiat",
                  description:
                      "We are looking forward for our another collaboration with Amiko Developer Studio",
                ),
                SizedBox(
                  height: 10,
                ),
                TestimodialContainer(
                  isMobile: true,
                  name: "Lim Ket",
                  description:
                      "Amiko Developer Studio is the best Web and Mobile App developer so far",
                ),
                SizedBox(),
                SizedBox(
                  height: 10,
                ),
                TestimodialContainer(
                  isMobile: true,
                  name: "Ivan Lim",
                  description:
                      "Amiko Developer Studio really put their client's priority in the first place!",
                ),
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
