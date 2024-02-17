import 'package:flutter/material.dart';
import 'package:profile_page/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width,
              color: const Color(Constants.colorBackgroundBottom),
              child: Stack(
                children: [
                  const Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          '@UserName123',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(Constants.colorBackgroundTop),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 110,
                      backgroundColor: Color(Constants.colorBackgroundBottom),
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
                  smallCircles(),
                ],
              ),
            ),
            inputAndButton(context),
          ],
        ),
      ),
    );
  }

  Container inputAndButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.60,
      width: MediaQuery.of(context).size.width,
      color: const Color(Constants.colorBackgroundBottom),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: const TextStyle(color: Color(Constants.colorLabel)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Color(Constants.colorLabel)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Phone Number',
                labelStyle: const TextStyle(color: Color(Constants.colorLabel)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Nationality',
                labelStyle: const TextStyle(color: Color(Constants.colorLabel)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(Constants.colorBackgroundTop), // background
                foregroundColor: Colors.white,
                minimumSize: const Size(200, 60), // foreground
              ),
              onPressed: () {},
              child: const Text(
                'Save Profile',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned smallCircles() {
    return const Positioned(
      bottom: 100,
      right: 115,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(Constants.colorBackgroundBottom),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/images/edit-icon.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
