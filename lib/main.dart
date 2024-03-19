import 'package:flutter/material.dart';
import 'package:google_clone/Responsive/MobileScrennLayout.dart';
import 'package:google_clone/Responsive/responsive_layout_screen.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

import 'Responsive/WebScreenLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const ResponsiveLayoutScreen(
          mobileScreenLayout: mobileScreenLayout(),
          webScreenLayout: webScreenLayout(),
      ),

    );
  }
}
