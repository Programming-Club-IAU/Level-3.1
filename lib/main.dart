import 'package:flutter/material.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const ProfilePage(),
      title: "Fahad's Profile",
    );
  }
}
