import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    super.key,
    required this.value,
    required this.setValue,
    required this.label,
  });

  final String label;
  final int value;
  final Function(CalcOps calcOps) setValue;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: kLabelTextStyle,
          ),
          Text(
            value.toString(),
            style: kNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                onPressed: () => setValue(CalcOps.minus),
                icon: FontAwesomeIcons.minus,
              ),
              const SizedBox(
                width: 15.0,
              ),
              RoundIconButton(
                onPressed: () => setValue(CalcOps.add),
                icon: FontAwesomeIcons.plus,
              ),
            ],
          )
        ],
      ),
    );
  }
}
