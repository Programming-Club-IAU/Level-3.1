import 'package:flutter/material.dart';
import 'widgets/details_block.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 24, top: 24),
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    size: 60,
                  ),
                ),
              ),
              DetailsBlock(
                label: "Email",
                content: "fahad.a.s.algarni@gmail.com",
                icon: Icons.email,
              ),
              SizedBox(height: 8),
              DetailsBlock(
                label: "Phone Number",
                content: "+966 55 897 5754",
                icon: Icons.phone,
              ),
              SizedBox(height: 8),
              DetailsBlock(
                label: "Residence",
                content: "Dhahran, Eastern Province",
                icon: Icons.home,
              ),
              SizedBox(height: 8),
              DetailsBlock(
                label: "University",
                content: "Imam Abdulrahmain bin Faisal University",
                icon: Icons.school,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
