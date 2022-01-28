import 'package:flutter/material.dart';
import 'package:flutter_layout_app/components/sex_content.dart';
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
            cardContent: Column(
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
                      style: kLabelNumberStyle
                    ),
                    const Text(
                      'Cm',
                      style: kLabelTextStyle,
                    )
                  ],
                ),
                Slider(
                  value: height.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: const Color(0xFFEB1555),
                  inactiveColor: const Color(0xFF8DBE98),
                  onChanged: (double newHeight) {
                    setState(() {
                      height = newHeight.round();
                    });
                  }
                )
              ],
            ),
          )
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                  child: ReusableContainer(
                    color: kInactiveColor,
                  )
              ),
              Expanded(
                child: ReusableContainer(
                  color: kInactiveColor,
                )
              ),
            ],
          )
        ),
      ],
    );
  }
}
