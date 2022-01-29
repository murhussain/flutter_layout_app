import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_layout_app/components/bottom_app_button.dart';
import 'package:flutter_layout_app/components/functionality.dart';
import 'package:flutter_layout_app/components/height_slider.dart';
import 'package:flutter_layout_app/components/sex_content.dart';
import 'package:flutter_layout_app/components/weight_and_age.dart';
import 'package:flutter_layout_app/screens/result_screen.dart';
import 'package:flutter_layout_app/styles/constants.dart';
import 'package:flutter_layout_app/widget/our_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender{
  male,
  female,
  noneSelected,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  Gender selected = Gender.noneSelected;
  int height = 180;
  int weight = 50;
  int ages = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = Gender.male;
                    });
                  },
                  child: ReusableContainer(
                    color: selected == Gender.male ? kActiveColor : kInactiveColor,
                    cardContent: const iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    )
                  ),
                )
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = Gender.female;
                    });
                  },
                  child: ReusableContainer(
                    color: selected == Gender.female ? kActiveColor : kInactiveColor,
                    cardContent: const iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                )
              ),
            ],
          )
        ),
        Expanded(
          child: ReusableContainer(
            color: kInactiveColor,
            cardContent: MiddleDescription(
              hght: height,
            ),
          )
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ReusableContainer(
                  color: kInactiveColor,
                  cardContent: BottomDescription(
                    title: 'WEIGHT',
                    value: weight,
                  ),
                )
              ),
              Expanded(
                child: ReusableContainer(
                  color: kInactiveColor,
                  cardContent: BottomDescription(
                    title: 'AGE',
                    value: ages,
                  ),
                )
              ),
            ],
          )
        ),
        BottomAppBtn(
          buttonTitle: 'CALCULATE',
          pressed: () {
            CalculatorBrain calc = CalculatorBrain(
              height: height,
              weight: weight
            );

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResultsScreen(
                bmiMessageResult: calc.getInterpretation(),
                bmiTextResult: calc.getResult(),
                bmiNumberResult: calc.calculateBMI(),
              ))
            );
          },
        )
      ],
    );
  }
}





