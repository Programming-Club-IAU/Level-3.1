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
          // positioned at top left
          top: -12.5,
          left: -2.5,

          // Avatar wrapped in PhysicalModel to cast shadow
          child: PhysicalModel(
            color: Colors.black,
            shape: BoxShape.circle,
            elevation: 16,
            child: CircleAvatar(
              radius: 60,
              foregroundImage: profilePicture,
            ),
          ),
        ),

        // The name field
        Positioned(
          top: 10,
          right: 50,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              border: Border.all(width: 0.5),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 20,
                )
              ],
            ),
            child: Text(
              name,
              style: const TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
