import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField(
      {super.key,
      required this.label,
      required this.content,
      this.borderColor = const Color.fromARGB(255, 75, 74, 83),
      this.borderEnabled = true,
      this.icon,
      this.image});

  final String label;
  final String content;
  final Color borderColor;
  final bool borderEnabled;
  // If icon is non-null, image will be null
  final IconData? icon;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    // Determine whether to display icon, image, or leave visual blank
    final Widget? visualWidget;

    if (icon != null) {
      visualWidget = Icon(icon!, size: 40);
    } else if (image != null) {
      visualWidget = image;
    } else {
      visualWidget = null;
    }

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
          // The actual field decoration
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 55, 54, 61),
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(25.0)),
            border: Border.all(
              color: borderColor,
              style: (borderEnabled) ? BorderStyle.solid : BorderStyle.none,
              width: 0.4,
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
                child: visualWidget,
              ),
            ],
          ),
        )
      ],
    );
  }
}
