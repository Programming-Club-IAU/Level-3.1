import 'package:flutter/material.dart';
import '../default_colors.dart';
import '../utils.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField(
      {super.key,
      required this.label,
      required this.content,
      this.fieldColor = DefaultColors.fieldColor,
      this.outlineColor = DefaultColors.fieldOutlineColor,
      this.icon,
      this.iconColor,
      this.image});

  final String label;
  final String content;
  final Color fieldColor;
  final Color outlineColor;
  // If icon is non-null, image will be discarded
  final IconData? icon;
  final Color? iconColor;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    // Determine whether to display icon, image, or leave visual blank
    final Widget? visualWidget;

    if (icon != null) {
      visualWidget = Icon(
        icon!,
        size: 40,
        color: iconColor,
      );
    } else if (image != null) {
      visualWidget = image;
    } else {
      visualWidget = null;
    }

    // A column containing the label ontop, and the description field below it
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // ================= The Label =================
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Container(
            // Text left to right + horizontal margin
            alignment: Alignment.centerLeft,
            margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
            // The Label Text
            child: Text(
              label,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ),

        // ======== The Description field ========
        // A container that has a Stack widget as it's child
        // The stack contains the text description, and the visual widget
        Container(
          // Horizontal margin + internal padding
          margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(10),
          // The actual field decoration
          decoration: roundedRectangle(
            fieldColor,
            outlineColor: outlineColor,
            roundness: 25,
            outlineThickness: 0.5,
          ),

          // Description stack, for text and visual
          child: Stack(
            // Default alignment on center-left
            alignment: Alignment.centerLeft,
            children: [
              // ========= Description Text =========
              Container(
                margin: EdgeInsets.only(
                  // If visual widget is non-null, expand margin on right side to leave space for the widget
                  right: (visualWidget != null) ? 60 : 5,
                  left: 5,
                ),
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              // ========= Description Visual =========
              Container(
                // aligned on right side
                alignment: const Alignment(1, 0),
                padding: const EdgeInsets.only(right: 6),
                // visualWidget is null if there's no visual set
                child: visualWidget,
              ),
            ],
          ),
        )
      ],
    );
  }
}
