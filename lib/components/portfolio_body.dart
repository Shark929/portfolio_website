import 'package:flutter/material.dart';
import 'package:portfolio_website/data/portfolio_data.dart';
import 'package:url_launcher/url_launcher.dart';

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
