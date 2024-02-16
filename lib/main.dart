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
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: DetailsBlock(
                  label: "Email",
                  content: "fahad.a.s.algarni@gmail.com",
                  icon: Icons.email,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: DetailsBlock(
                  label: "Phone Number",
                  content: "+966 55 897 5754",
                  icon: Icons.phone,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: DetailsBlock(
                  label: "Residence",
                  content: "Dhahran, Eastern Province",
                  icon: Icons.home,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12.0),
                child: DetailsBlock(
                  label: "University",
                  content: "Imam Abdulrahman bin Faisal University",
                  icon: Icons.school,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
