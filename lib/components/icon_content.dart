import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.icon,
    required this.label,
    this.gap = 15.0,
  });

  final IconData icon;
  final double gap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: gap,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
