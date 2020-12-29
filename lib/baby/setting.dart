import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodybite_app/pallete.dart';
import 'package:foodybite_app/widgets/widgets.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/PROfile.png',
        ),
       Scaffold(
          backgroundColor: Colors.transparent,
          body: Column( children: [
            Flexible(
                child: Center(
                  child: Text(
                    'Setting',
                    style: TextStyle(
                        color: Colors.blue[300],
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          ],),
        )
      ],
    );
  }
}
