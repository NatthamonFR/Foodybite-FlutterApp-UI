import 'package:flutter/material.dart';
import 'dart:js';
import 'dart:ui';
import 'package:foodybite_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodybite_app/pallete.dart';

import 'package:foodybite_app/widgets/normal_Dialog.dart';
import 'package:foodybite_app/widgets/widgets.dart';

class creataccount extends StatefulWidget {
  @override
  _creataccountState createState() => _creataccountState();
}

class _creataccountState extends State<creataccount> {
  String user, pass;
  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              userFrom(),
              passFrom(),
              conpassFrom(),
              registerButton(),
                    
            ]
          )
       
      
    );
  }



  Widget userFrom() => Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 250.0,
          child: TextField(
            onChanged: (value) => user = value.trim(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                FontAwesomeIcons.user,
                color: Colors.blue,
                ),
                labelText: 'User',
                          
                          
            )
                        )
         ),
    ],
  );


Widget passFrom() => Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Container(
        width: 250.0,
          child: TextField(
            onChanged: (value) => pass = value.trim(),
            decoration: InputDecoration(
              prefixIcon: Icon(
                FontAwesomeIcons.user,
                color: Colors.blue,
                ),
                labelText: 'Password',
                          
                          
            )
                        )
         ),
    ],
);
 
Widget conpassFrom() => Row(mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Container(
    
          child: PasswordInput(
    
                          icon: FontAwesomeIcons.lock,
    
                          hint: 'Confirm Password',
    
                          inputAction: TextInputAction.next,
    
                        )
    
         ),
  ],
);








 Widget registerButton() => Row(mainAxisAlignment: MainAxisAlignment.center,
   children: [
     Container(
		width: 250.0, 
		child: RaisedButton(
		onPressed: () {
		print('user =$user, password = $pass' );
			if (
			user == null ||
			user.isEmpty ||
			pass == null ||
			pass.isEmpty) {
			print('Have Space');
			}
		},
        child: Text("Register"),
		),
     ),
   ],
 );

}