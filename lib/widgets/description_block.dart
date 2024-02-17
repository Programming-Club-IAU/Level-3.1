import 'package:flutter/material.dart';
import 'description_field.dart';

class DescriptionBlock extends StatelessWidget {
  const DescriptionBlock({
    super.key,
    required this.label,
    required this.descriptions,
  });

  final String label;
  final List<DescriptionField> descriptions;

  @override
  Widget build(BuildContext context) {
    // Initialize the list of widgets to be displayed with a text widget containing the label
    final List<Widget> displayWidgets = [
      Container(
        margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.4,
            color: const Color.fromARGB(255, 75, 74, 83),
          ),
          color: const Color.fromARGB(255, 55, 54, 61),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Text(
          label,
        ),
      ),
    ];

    // Essentially wrap each description widget with padding on the bottom side
    for (int i = 0; i < descriptions.length; i++) {
      // Create the padding widget, with the description field as its child
      Widget widget = Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: descriptions[i],
      );
      // Then add it to display list
      displayWidgets.add(widget);
    }

    return UnconstrainedBox(
      child: Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 36, 34, 38),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(
            width: 0.5,
            color: const Color.fromARGB(255, 55, 54, 61),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: displayWidgets,
        ),
      ),
    );
  }
}
