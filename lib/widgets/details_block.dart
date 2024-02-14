import 'package:flutter/material.dart';

// The Details Block widget is composed of essentialy 2 parts: The label, and the content
// The content aspect itself is divided into 2 subparts: The text and the icon
// The text is required, but the icon is optional

// The composition of the widget is as follows:
// The widget is wrapped in an expanded widget that has a column as its child
// This is to make the label and content components expand dynamically depending on the text length

// The column has 3 children:
// A SizedBox widget for the label
// Some padding (for space between the label and the content)
// A Container widget for the content

// Both the SizedBox label and the Container content have a fixed margin that's 40 pixels wide from the screen
// In addition to the fixed margin, there may be some extra indentation

// The SizedBox is simple enough:
// Its width property has is just the 40 pixel margin from the screen (plus some indentation if it's called for)
// and its child property has just the text for the label

// The content container is quite structured though
// Firstly, the whole container has a box decoration, that's the "block" for the content
// but its child property is a Stack widget

// The Stack has 2 children, both of them are containers that contain the text and icon respectively
// The "Text" container has a 40 pixel offset margin on the right side to make space for the icon
// The "Icon" container has its alignment on the right side

class DetailsBlock extends StatelessWidget {
  const DetailsBlock(
      {super.key,
      required this.label,
      required this.content,
      this.labelIndentation = 0,
      this.fontColor = Colors.black,
      this.blockColor = Colors.white,
      this.borderColor = Colors.black,
      this.borderEnabled = true,
      this.icon});

  final String label;
  final String content;
  final double labelIndentation;
  final Color fontColor;
  final Color blockColor;
  final Color borderColor;
  final bool borderEnabled;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - (40 + labelIndentation),
          child: Text(
            label,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 14),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: MediaQuery.of(context).size.width - 40,
          padding: const EdgeInsets.all(10),
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
          child: Stack(
            // "Content" stack, for text and icon
            alignment:
                const Alignment(-1, 0), // Default alignment is center-left
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 40, // Expand margin on right side for the icon
                  left: 5,
                ),
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 14,
                    color: fontColor,
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1, 0),
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
