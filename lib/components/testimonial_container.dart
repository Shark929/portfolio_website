import 'package:flutter/material.dart';

class TestimodialContainer extends StatelessWidget {
  final bool isMobile;
  final String? name, description;
  const TestimodialContainer(
      {super.key, required this.isMobile, this.name, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white12,
      ),
      child: Column(children: [
        Container(
          height: isMobile ? 80 : 100,
          width: isMobile ? 80 : 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/business1.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name ?? "",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        isMobile == true
            ? SizedBox(
                width: 300,
                child: Text(
                  description ??
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  description ??
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
              )
      ]),
    );
  }
}
