import 'package:flutter/material.dart';

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
    return Expanded(
      child: Column(
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
              border: Border.symmetric(
                vertical: BorderSide(
                  style: (borderEnabled) ? BorderStyle.solid : BorderStyle.none,
                  color: borderColor,
                  width: 2,
                ),
                horizontal: BorderSide(
                  style: (borderEnabled) ? BorderStyle.solid : BorderStyle.none,
                  color: borderColor,
                  width: 2,
                ),
              ),
            ),
            child: Stack(
              alignment: const Alignment(-1, 0),
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: Text(
                    content,
                    style: TextStyle(
                      fontSize: 14,
                      color: fontColor,
                    ),
                  ),
                ),
                Container(
                  alignment: const Alignment(1, 1),
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
      ),
    );
  }
}
