import 'package:flutter/material.dart';


class RoundedIconButton  extends StatelessWidget {
  final IconData icon;
  final VoidCallback pressed;
  const RoundedIconButton ({
    Key? key,
    required this.icon,
    required this.pressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: pressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}