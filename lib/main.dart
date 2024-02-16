import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int colorBackgroundTop = 0xFFF44336;
  final int colorBackgroundBottom = 0xFF212133;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              color: Color(colorBackgroundBottom),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    color: Color(colorBackgroundTop),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Color(colorBackgroundBottom),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/images/profilepic.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    right: 115,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(colorBackgroundBottom),
                        ),
                        const Positioned(
                          bottom: 5,
                          right: 5,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            child: ClipOval(
                              child: Image(
                                image:
                                    AssetImage('assets/images/edit-icon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              color: Color(colorBackgroundBottom),
            ),
          ],
        ),
      ),
    );
  }
}
