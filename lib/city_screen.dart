import 'package:flutter/material.dart';
import 'package:temperature/constants.dart';
class city_screen extends StatefulWidget {
  @override
  State<city_screen> createState() => _city_screenState();
}

class _city_screenState extends State<city_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top:40.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent.shade400, Colors.lightBlue],
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 50.0,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: null,
              ),
              TextButton(onPressed: () {},
                         child: Text(
                           'Get Weather',
                           style: kButtonTextStyle,
                         ))
            ],
          ),
        ),
      ),
    );
  }
}
