import 'dart:async';

import 'package:flutter/material.dart';

import '../auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xffF8F6FC),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Container(

              width: 120,

              height: 120,

              decoration: BoxDecoration(

                color: const Color(0xffB388FF),

                borderRadius: BorderRadius.circular(35),

              ),

              child: const Icon(

                Icons.spa,

                size: 60,

                color: Colors.white,

              ),

            ),

            const SizedBox(height: 30),

            const Text(

              "Bloom",

              style: TextStyle(

                fontSize: 38,

                fontWeight: FontWeight.bold,

              ),

            ),

            const SizedBox(height: 10),

            const Text(

              "Seu organizador pessoal",

              style: TextStyle(

                fontSize: 16,

                color: Colors.grey,

              ),

            ),

          ],

        ),

      ),

    );

  }
}
