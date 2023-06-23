import 'package:flutter/material.dart';
import 'package:temperature/constants.dart';

class Locations extends StatefulWidget {
  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent.shade400, Colors.lightBlue],
          ),
        ),
        constraints: BoxConstraints.expand(),
        child:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("San Francisco",
                style: kCityApp,
              ),
              Text("Updated: 1 min ago",
                   style: kUpdateTime,),
             // Row(
                //mainAxisAlignment: MainAxisAlignment.center,
               // children: <Widget>[
                  //TextButton(
                    //onPressed: () {},
                    //child: Icon(
                      //Icons.near_me,
                      //size: 50.0,
                      //color: Colors.blueGrey,
                    //),
                 // ),
               // ],
             // ),
              Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Text('23°',style: kTempTextStyle,),
                    Text('🌞', style: kConditionTextStyle,),
                  ],
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 45.0,right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("It's 🍧 time",
                      style: kMessageTextStyle,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

