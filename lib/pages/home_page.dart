import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(195, 20, 50, 1.0),
            Color.fromRGBO(36, 11, 54, 1.0)
          ],
        )),
      ),
    );
  }
}
