import 'package:flutter/material.dart';

import 'create-new-account.dart';


class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> with TickerProviderStateMixin {
  String _selectedTab = "Home";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: Column( 
      children: [
        Expanded(
            child: Container(
          color: _selectedTab == "Home"
                  ? Colors.blueGrey
                 : (_selectedTab == "Graph"
                  ? Colors.blueGrey
                  : (_selectedTab == "Settings"
                  ? Colors.blueGrey
                    : (_selectedTab == "Diary"
                  ? Colors.blueGrey
                  : (_selectedTab == "Activity" 
                  ? Colors.blueGrey : Colors.black)))
                  ),
                 




        )),
        // Tab Bar...
        Padding(
          // Safe Rea Value...
          padding: EdgeInsets.only(
              left: 15.0,
              right: 15,
              top: 12,
              bottom: MediaQuery.of(context).padding.bottom),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabBarButton(context, Icon(Icons.home), "Home"),             
              TabBarButton(context, Icon(Icons.notifications), "Activity"),
              TabBarButton(context, Icon(Icons.photo), "Diary"),
              TabBarButton(context, Icon(Icons.bar_chart_rounded), "Graph"),
              TabBarButton(context, Icon(Icons.settings), "Settings"),
            ],
          ),
        )
      ],
    ));
  }

  // Tab Bar Button...
 // ignore: missing_return



  @override
  Widget TabBarButton(BuildContext context, Icon icon, String title) {
    return AnimatedContainer(
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 180),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: _selectedTab == title ? Colors.purple : Colors.transparent),
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(icon.icon,
                  size: 25,
                  color: _selectedTab == title ? Colors.white : Colors.grey),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: AnimatedSize(
                    duration: Duration(milliseconds: 180),
                    curve: Curves.easeOut,
                    vsync: this,
                    child: Text(_selectedTab == title ? title : "",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: _selectedTab == title
                                ? Colors.white
                                : Colors.grey)),
                  ))
            ],
          ),
        ),
        onTap: () {
          setState(() {
            _selectedTab = title;
            
          });
        },
      ),
    );
  }
}
