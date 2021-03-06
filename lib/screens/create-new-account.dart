



import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:foodybite_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';





class CreateNewAccount extends StatelessWidget {
  String user, pass;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/create acc.png'),
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
        ),
      ],
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
      

      
			}else{
        reThread();
      }
		},
        child: Text("Register"),
		),
     ),
   ],
 );



Future<Null> reThread()async{
  String url ='http://192.168.2.56/addData.php?isAdd=true&name=$user&typ=$pass';


  try{
    Response response = await Dio().get(url);
    print('res = $response');
  } catch (e){

  }

}
		

  


    
  

 

 
}







