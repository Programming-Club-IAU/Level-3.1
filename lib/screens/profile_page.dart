import 'package:flutter/material.dart';
import '../widgets/details_block.dart';
import '../widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: ProfileCard(),
                ),
              ],
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
            Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: DetailsBlock(
                label: "Passion",
                content: "Programming",
                icon: Icons.laptop,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: DetailsBlock(
                label: "Hobby",
                content: "Gaming",
                icon: Icons.videogame_asset,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
