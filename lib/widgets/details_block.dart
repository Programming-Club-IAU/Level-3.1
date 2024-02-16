import 'package:flutter/material.dart';

// A widget that returns a "block" of details, with a label above it

class DetailsBlock extends StatelessWidget {
  const DetailsBlock(
      {super.key,
      required this.label,
      required this.content,
      this.blockColor = Colors.white,
      this.borderColor = Colors.black,
      this.borderEnabled = true,
      this.icon});

  final String label;
  final String content;
  final Color blockColor;
  final Color borderColor;
  final bool borderEnabled;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    // A column containing the label ontop, and the content block below it
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // The Label SizedBox
        SizedBox(
          // 40 pixel wide margin
          width: MediaQuery.of(context).size.width - 40,
          // The Label Text
          child: Text(
            label,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        // The Content Container
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.all(10),
          // The actual "Block" decoration
          decoration: BoxDecoration(
            color: blockColor,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            border: Border.all(
              color: borderColor,
              style: (borderEnabled) ? BorderStyle.solid : BorderStyle.none,
              width: 2,
            ),
          ),
          // "Content" stack, for text and icon
          child: Stack(
            // Default alignment on center-left
            alignment: AlignmentDirectional.centerStart,
            children: [
              // The content text
              Container(
                margin: const EdgeInsets.only(
                  right:
                      60, // Expand margin on right side to leave space for the icon
                  left: 5,
                ),
                child: Text(content,
                    style: const TextStyle(
                      fontSize: 14,
                    )),
              ),
              // The content icon
              Container(
                // aligned on right side
                alignment: const Alignment(1, 0),
                padding: const EdgeInsets.only(right: 6),
                // child null if there is no icon set
                child: (icon != null)
                    ? Icon(
                        icon!,
                        size: 40,
                      )
                    : null,
              ),
            ],
          ),
        )
      ],
    );
  }
}
