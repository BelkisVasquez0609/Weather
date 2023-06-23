import 'package:flutter/material.dart';
import 'package:temperature/Locations.dart';
import 'package:temperature/constants.dart';
import 'package:temperature/city_screen.dart';

void main() => runApp(MyTemperatureApp());

class MyTemperatureApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Belkis Weather App',
              style: kTitleApp
              ),
            ],
          ),
        ),
        body: Locations(),
      ),
    );
  }
}
