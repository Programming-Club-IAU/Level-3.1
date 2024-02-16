import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(width: 0.5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 8,
              offset: Offset(1.5, 1.5),
            ),
          ]),
      child: const CircleAvatar(
        radius: 40,
        child: Icon(
          Icons.person,
          size: 60,
        ),
      ),
    );
  }
}
