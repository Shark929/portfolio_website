import 'package:flutter/material.dart';
import 'package:portfolio_website/pages/about_us_page.dart';
import 'package:portfolio_website/pages/home_page.dart';
import 'package:portfolio_website/pages/portfolio_page.dart';

class NavBar extends StatefulWidget {
  final bool isHome, isPortfolio, isAboutUs, isGetStarted;
  const NavBar(
      {super.key,
      required this.isHome,
      required this.isPortfolio,
      required this.isAboutUs,
      required this.isGetStarted});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //layout builder will make the nav bar responsive
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavBar(
            isHome: widget.isHome,
            isAboutUs: widget.isAboutUs,
            isPortfolio: widget.isPortfolio,
          );
        } else {
          return MobileNavBar(
            isHome: widget.isHome,
            isAboutUs: widget.isAboutUs,
            isPortfolio: widget.isPortfolio,
          );
        }
      },
    );
  }
}

/*             DesktopNavbar                 */
class DesktopNavBar extends StatefulWidget {
  final bool? isHome, isPortfolio, isAboutUs, isGetStarted;

  DesktopNavBar({
    super.key,
    this.isHome,
    this.isPortfolio,
    this.isAboutUs,
    this.isGetStarted,
  });

  @override
  State<DesktopNavBar> createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: BoxConstraints(maxWidth: 1200),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text(
            "Amiko Developer Studio",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                          widget.isHome! ? FontWeight.bold : FontWeight.normal,
                      fontSize: widget.isHome! ? 18 : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: widget.isAboutUs!
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: widget.isAboutUs! ? 18 : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  print("Portfolio");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: widget.isPortfolio!
                          ? FontWeight.bold
                          : FontWeight.normal,
                      fontSize: widget.isPortfolio! ? 18 : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  print("get started");
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(195, 20, 50, 1.0),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

/*             MobileNavbar                 */
class MobileNavBar extends StatelessWidget {
  final bool isHome, isAboutUs, isPortfolio;
  const MobileNavBar(
      {super.key,
      required this.isHome,
      required this.isAboutUs,
      required this.isPortfolio});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Amiko Developer Studio",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: isHome ? FontWeight.bold : null,
                      fontSize: isHome ? 16 : null,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const AboutUs(),
                      ),
                    );
                  },
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: isAboutUs ? FontWeight.bold : null,
                      fontSize: isAboutUs ? 16 : null,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const PortFolioPage()),
                    );
                  },
                  child: Text(
                    "Portfolio",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: isPortfolio ? FontWeight.bold : null,
                      fontSize: isPortfolio ? 16 : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
