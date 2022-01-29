import 'package:flutter/material.dart';
import 'package:flutter_layout_app/styles/constants.dart';


class MiddleDescription extends StatefulWidget {
  int hght;
  MiddleDescription({
    Key? key,
    required this.hght,
  }) : super(key: key);

  @override
  State<MiddleDescription> createState() => _MiddleDescriptionState();
}

class _MiddleDescriptionState extends State<MiddleDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              widget.hght.toString(),
              style: kLabelNumberStyle
            ),
            const Text(
              'Cm',
              style: kLabelTextStyle,
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: kButtonColor,
            activeTrackColor: Colors.white,
            inactiveTrackColor: const Color(0xFF8DBE98),
            overlayColor: const Color(0x15EB1555),
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 15.0
            ),
            overlayShape: const RoundSliderOverlayShape(
              overlayRadius: 30.0
            ),
          ),
          child: Slider(
            value: widget.hght.toDouble(),
            min: 120.0,
            max: 220.0,
            onChanged: (double newHeight) {
              setState(() {
                widget.hght = newHeight.round();
              });
            }
          ),
        )
      ],
    );
  }
}
