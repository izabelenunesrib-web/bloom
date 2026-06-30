import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/home_screen.dart';

class BloomApp extends StatelessWidget {

  const BloomApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: "Bloom",

      theme: ThemeData(

        useMaterial3: true,

        colorSchemeSeed: const Color(0xffb388ff),

        scaffoldBackgroundColor: const Color(0xfff9f8fd),

        textTheme: GoogleFonts.interTextTheme(),

      ),

      home: const HomeScreen(),

    );

  }

}
