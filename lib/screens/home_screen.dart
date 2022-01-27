import 'package:flutter/material.dart';
import 'package:flutter_layout_app/components/sex_content.dart';
import 'package:flutter_layout_app/widget/our_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF0A0C10);
const inactiveColor = Color(0xFF272B33);

enum Gender{
  male,
  female
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color maleCardColour = inactiveColor;
  Color femaleCardColour = inactiveColor;

  void UpdateColour(Gender selected){
    //Male card pressed
    if (selected == Gender.male){
      if (maleCardColour == inactiveColor){
        maleCardColour = activeColor;
        femaleCardColour = inactiveColor;
      } else{
        maleCardColour = inactiveColor;
      }
    }
    //Female card pressed
    if (selected == Gender.female){
      if (femaleCardColour == inactiveColor){
        femaleCardColour = activeColor;
        maleCardColour = inactiveColor;
      } else{
        femaleCardColour = inactiveColor;
      }
    }
  }

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
                      UpdateColour(Gender.male);
                    });
                  },
                  child: ReusableContainer(
                      color: maleCardColour,
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
                      UpdateColour(Gender.female);
                    });
                  },
                  child: ReusableContainer(
                    color: femaleCardColour,
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
        const Expanded(
          child: ReusableContainer(
            color: inactiveColor,
            cardContent: Center(
                child: Text('hello')
            ),
          )
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Expanded(
                  child: ReusableContainer(
                    color: inactiveColor,
                    cardContent: Center(
                        child: Text('hello')
                    ),
                  )
              ),
              Expanded(
                child: ReusableContainer(
                  color: inactiveColor,
                  cardContent: Center(
                      child: Text('hello')
                  ),
                )
              ),
            ],
          )
        ),
      ],
    );
  }
}
