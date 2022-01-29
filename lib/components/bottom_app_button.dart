import 'package:flutter/material.dart';
import 'package:flutter_layout_app/styles/constants.dart';

class BottomAppBtn extends StatelessWidget {
  final void Function() pressed;
  final String buttonTitle;

  const BottomAppBtn({
    Key? key,
    required this.pressed,
    required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        color: kButtonColor,
        width: double.infinity,
        height: kBottomHeight,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
