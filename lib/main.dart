import 'package:ezcheck_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Future main() async {
  runApp(const EzCheckScreen());
}

class EzCheckScreen extends StatelessWidget {
  const EzCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenCheck(),
    );
  }
}
