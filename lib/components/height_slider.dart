import 'package:flutter/material.dart';
import '../constants.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final int height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        trackHeight: 1,
        inactiveTrackColor: kSliderInActiveColor,
        thumbColor: kSliderThumbColor,
        overlayColor: kSliderOverlayColor,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 15.0,
        ),
        overlayShape: const RoundSliderOverlayShape(
          overlayRadius: 30.0,
        ),
      ),
      child: Slider(
        value: height.toDouble(),
        min: kMinHeight,
        max: kMaxHeight,
        onChanged: onChanged,
      ),
    );
  }
}
