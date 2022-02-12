import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/MobileScreenLayout.dart';
import 'package:google_search_clone/responsive/ResponsiveLayout.dart';
import 'package:google_search_clone/responsive/WebScreenLayout.dart';

import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundcolor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout : MobileScreenLayout(),
        webScreenLayout : WebScreenLayout()
      ),
    );
  }
}

