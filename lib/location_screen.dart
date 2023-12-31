import 'package:flutter/material.dart';
import 'package:temperature/constants.dart';
import 'package:temperature/weather.dart';

import 'constants.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({super.key, required this.locationWeather});

  final locationWeather;


  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  WeatherModel weather = WeatherModel();
  var temperature;
  String? weatherIcon;
  var cityName;
  var message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData)
  {
    double temp = weatherData['main']['temp'];
    temperature = temp.toInt();
    var condition = weatherData['weather'][0]['id'];
    cityName = weatherData['name'];
    weatherIcon = weather.getWeatherIcon(condition);
    message = weather.getMessage(temperature);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      //'32°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon.toString(),
                      //'☀️',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                   message,
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
