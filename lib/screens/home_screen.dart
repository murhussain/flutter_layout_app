import 'package:flutter/material.dart';
import 'package:flutter_layout_app/components/sex_content.dart';
import 'package:flutter_layout_app/widget/our_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

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
                  onTap: () {},
                  child: ReusableContainer(
                      cardContent: const iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                  ),
                )
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: ReusableContainer(
                      cardContent: const iconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      )
                  ),
                )
              ),
            ],
          )
        ),
        Expanded(
          child: ReusableContainer(
            cardContent: const Center(
                child: Text('hello')
            ),
          )
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: ReusableContainer(
                    cardContent: const Center(
                        child: Text('hello')
                    ),
                  )
              ),
              Expanded(
                child: ReusableContainer(
                  cardContent: const Center(
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
