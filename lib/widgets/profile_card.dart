import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.name,
    this.cardColor = Colors.amber,
    this.image,
  });

  final String name;
  final Color cardColor;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: cardColor,
        // ===== Round Rectangle Look =====
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        // ===== Border and Shadow ======
        border: Border.all(width: 0.5),
        boxShadow: [
          BoxShadow(
            // Give shadow same color as card to get bloom-like effect
            color: cardColor,
            blurRadius: 8,
            offset: const Offset(1.5, 1.5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.person,
              size: 60,
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 16),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color.fromARGB(178, 41, 36, 47),
            ),
            child: Text(name),
          ),
        ],
      ),
    );
  }
}
