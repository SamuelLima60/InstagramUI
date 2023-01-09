import 'package:flutter/material.dart';
import 'package:instaui/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      home: const HomePage(),
    );
  }
}
