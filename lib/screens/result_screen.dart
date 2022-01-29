import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_layout_app/components/bottom_app_button.dart';
import 'package:flutter_layout_app/styles/constants.dart';
import 'package:flutter_layout_app/widget/our_container.dart';

class ResultsScreen extends StatelessWidget {
  final String bmiNumberResult;
  final String bmiTextResult;
  final String bmiMessageResult;

  const ResultsScreen({Key? key,
    required this.bmiNumberResult,
    required this.bmiTextResult,
    required this.bmiMessageResult
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'You Results:',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              color: kInactiveColor,
              cardContent: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiTextResult.toUpperCase(),
                    style: kResultsxtStyle,
                  ),
                  Text(
                    bmiNumberResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    bmiMessageResult,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            )
          ),
          BottomAppBtn(
            pressed: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE'
          )
        ],
      )
    );
  }
}
