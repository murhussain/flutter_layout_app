import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Widget cardContent;
  ReusableContainer({
    required this.cardContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: cardContent,
    );
  }
}
