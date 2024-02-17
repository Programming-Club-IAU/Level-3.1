import 'package:flutter/material.dart';
import 'description_field.dart';
import '../default_colors.dart';
import '../utils.dart';

class DescriptionBlock extends StatelessWidget {
  const DescriptionBlock({
    super.key,
    required this.label,
    required this.descriptions,
    this.blockColor = DefaultColors.blockColor,
    this.outlineColor = DefaultColors.blockOutlineColor,
    this.labelFieldColor = DefaultColors.fieldColor,
    this.labelFieldOutlineColor = DefaultColors.fieldOutlineColor,
    this.fieldPadding = 24,
  });

  final String label;
  final List<DescriptionField> descriptions;
  final Color blockColor;
  final Color outlineColor;
  final Color labelFieldColor;
  final Color labelFieldOutlineColor;
  final double fieldPadding;

  // Literally returns a "block" of description fields, with a label ontop and the column of description fields below it
  @override
  Widget build(BuildContext context) {
    // Initialize the list of widgets to be displayed with a container widget for the block label
    final List<Widget> displayWidgets = [
      Container(
        // Vertical margin to leave space between the blocks top border, and the list items below
        margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
        // Some internal padding
        padding: const EdgeInsets.all(12),
        // A sorta text bubble for the label
        decoration: roundedRectangle(
          labelFieldColor,
          outlineColor: labelFieldOutlineColor,
          bloomIntensity: 32,
        ),
        // And the text itself
        child: Text(label),
      ),
    ];

    // Essentially wrap each description widget with padding on the bottom side to leave space in the column for the next item
    for (int i = 0; i < descriptions.length; i++) {
      // Create the padding widget, with the description field as its child
      Widget widget = Padding(
        padding: EdgeInsets.only(bottom: fieldPadding),
        child: descriptions[i],
      );
      // Then add it to display list
      displayWidgets.add(widget);
    }

    return Container(
      // Horizontal Margin
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      // The actual "Block" itself
      decoration: roundedRectangle(
        blockColor,
        outlineColor: outlineColor,
        outlineThickness: 1.25,
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: displayWidgets,
      ),
    );
  }
}
