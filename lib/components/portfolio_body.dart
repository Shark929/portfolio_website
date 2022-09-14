import 'package:flutter/material.dart';
import 'package:portfolio_website/data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioBody extends StatelessWidget {
  const PortfolioBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //layout builder will make the nav bar responsive
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return const PortfolioBodyDesktop();
        } else {
          return const PortfolioBodyMobile();
        }
      },
    );
  }
}

class PortfolioBodyDesktop extends StatefulWidget {
  const PortfolioBodyDesktop({super.key});

  @override
  State<PortfolioBodyDesktop> createState() => _PortfolioBodyDesktopState();
}

class _PortfolioBodyDesktopState extends State<PortfolioBodyDesktop> {
  Future<void>? _launched;
  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri instagramUrl = Uri(
        scheme: 'https',
        host: 'www.instagram.com',
        path: '/amiko_software_developer');
    final Uri linkedInUrl = Uri(
        scheme: 'https',
        host: 'www.linkedin.com',
        path: '/in/ivan-lim-02a599232');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Text(
                    "Design a Bill App with Figma",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/bill_app_figma.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/portfolio1.jpeg",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Text(
                  "Cloning Instagram App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Text(
                  "Develop a Chat App with Firebase database",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/portfolio2.jpeg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            "Visit our website for more!",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _launched = _launchInWebViewOrVC(instagramUrl);
                  });
                },
                child: Image.asset(
                  "assets/instagram.png",
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _launched = _launchInWebViewOrVC(linkedInUrl);
                  });
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PortfolioBodyMobile extends StatefulWidget {
  const PortfolioBodyMobile({super.key});

  @override
  State<PortfolioBodyMobile> createState() => _PortfolioBodyMobileState();
}

class _PortfolioBodyMobileState extends State<PortfolioBodyMobile> {
  Future<void>? _launched;
  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri instagramUrl = Uri(
        scheme: 'https',
        host: 'www.instagram.com',
        path: '/amiko_software_developer');
    final Uri linkedInUrl = Uri(
        scheme: 'https',
        host: 'www.linkedin.com',
        path: '/in/ivan-lim-02a599232');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              return PortfolioContainer(
                title: portfolioData[index]['title'],
                image: portfolioData[index]['image'],
              );
            },
          ),
          const Text(
            "Visit my profile for more!",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _launched = _launchInWebViewOrVC(instagramUrl);
                  });
                },
                child: Image.asset(
                  "assets/instagram.png",
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _launched = _launchInWebViewOrVC(linkedInUrl);
                  });
                },
                child: Image.asset(
                  "assets/linkedin.png",
                  height: 40,
                  width: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PortfolioContainer extends StatelessWidget {
  final String title, image;
  const PortfolioContainer(
      {super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          // color: Colors.white,
          child: Image.asset(image),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 2,
          color: Colors.white38,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
