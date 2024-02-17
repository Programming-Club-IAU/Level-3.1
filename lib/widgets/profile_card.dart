import 'package:flutter/material.dart';
import '../default_colors.dart';
import '../utils.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    required this.profilePicture,
    this.cardColor = DefaultColors.profileCardColor,
  });

  final String name;
  final Color cardColor;
  final ImageProvider profilePicture;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        // The big rectangle
        Container(
          width: 350,
          height: 150,
          padding: const EdgeInsets.all(25),
          decoration: roundedRectangle(
            cardColor,
            bloomIntensity: 40,
            shadow: false,
          ),
        ),

        // ======= Profile Picture =======
        Positioned(
          // positioned at top
          top: -15,

          // Avatar wrapped in PhysicalModel to cast shadow
          child: PhysicalModel(
            color: Colors.black,
            shape: BoxShape.circle,
            elevation: 16,
            child: CircleAvatar(
              radius: 65,
              foregroundImage: profilePicture,
            ),
          ),
        ),

        // The name field
        Positioned(
          bottom: -15,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(6),
            decoration: roundedRectangle(
              Colors.white,
              roundness: 5,
              bloomIntensity: 16,
            ),
            child: Text(
              name,
              style: const TextStyle(color: Color.fromARGB(255, 6, 6, 6)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
