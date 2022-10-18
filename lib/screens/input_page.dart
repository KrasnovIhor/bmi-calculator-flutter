import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/height_slider.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/counter_card.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genders selectedGender = Genders.male;
  int height = 180;
  int weight = 60;
  int age = 18;

  void setSelectedGender(Genders gender) {
    setState(() {
      if (gender == Genders.male) {
        selectedGender = Genders.male;
      }
      if (gender == Genders.female) {
        selectedGender = Genders.female;
      }
    });
  }

  void setHeight(double newHeight) {
    setState(() => height = newHeight.round());
  }

  void setWeight(CalcOps calcOps) {
    setState(() {
      if (calcOps == CalcOps.add) {
        weight++;
      }
      if (calcOps == CalcOps.minus) {
        weight--;
      }
    });
  }

  void setAge(CalcOps calcOps) {
    setState(() {
      if (calcOps == CalcOps.add) {
        age++;
      }
      if (calcOps == CalcOps.minus) {
        age--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTapHandler: () => setSelectedGender(Genders.male),
                    colour: selectedGender == Genders.male
                        ? kActiveCardColor
                        : kInactivekActiveCardColor,
                    child: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTapHandler: () => setSelectedGender(Genders.female),
                    colour: selectedGender == Genders.female
                        ? kActiveCardColor
                        : kInactivekActiveCardColor,
                    child: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  HeightSlider(
                    height: height,
                    onChanged: setHeight,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CounterCard(
                    label: 'WEIGHT',
                    value: weight,
                    setValue: setWeight,
                  ),
                ),
                Expanded(
                  child: CounterCard(
                    value: age,
                    label: 'AGE',
                    setValue: setAge,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc = CalculatorBrain(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiResults: calc.calculateBMI(),
                    resultText: calc.getResults().name,
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
