import 'package:flutter/material.dart';
import 'package:profile_page/screens/profile_page.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
          backgroundColor: Color.fromARGB(255, 235, 172, 193), // Set the app bar color to pink
        ),
        body: const ProfilePage(),
      ),
    );
  }
}
