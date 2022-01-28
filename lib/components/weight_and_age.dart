import 'package:flutter/material.dart';
import 'package:flutter_layout_app/styles/constants.dart';
import 'package:flutter_layout_app/widget/ourRounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottomDescription extends StatefulWidget {
  final String title;
  int value;
  BottomDescription({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  State<BottomDescription> createState() => _BottomDescriptionState();
}

class _BottomDescriptionState extends State<BottomDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
          widget.title,
          style: kLabelTextStyle,
        ),
        Text(
          widget.value.toString(),
          style: kLabelNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(
              icon: FontAwesomeIcons.minus,
              pressed: () {
                setState(() {
                  widget.value--;
                });
              },
            ),
            const SizedBox(width: 10.0,),
            RoundedIconButton(
              icon: FontAwesomeIcons.plus,
              pressed: () {
                setState(() {
                  widget.value++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
