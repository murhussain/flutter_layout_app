import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout',
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ReusableContainer(
                      cardContent: iconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      )
                    )
                  ),
                  Expanded(
                    child: ReusableContainer(
                        cardContent: iconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        )
                    )
                  ),
                ],
              )
            ),
            Expanded(
              child: ReusableContainer(
                cardContent: Center(
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
                      cardContent: Center(
                          child: Text('hello')
                      ),
                    )
                  ),
                  Expanded(
                    child: ReusableContainer(
                      cardContent: Center(
                          child: Text('hello')
                      ),
                    )
                ),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}

class iconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const iconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0,),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}

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

