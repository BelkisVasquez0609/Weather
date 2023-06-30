import 'package:flutter/material.dart';
import 'package:temperature/constants.dart';
import 'package:temperature/weather.dart';

class Locations extends StatefulWidget {
  Locations({super.key, required this.locationWeather});
  final locationWeather;

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
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
              Text(cityName,
                style: kCityApp,
              ),
              Text("Updated: 1 min ago",
                   style: kUpdateTime,),
              Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                    Text('$temperature°',
                          style: kTempTextStyle,),
                    Text(weatherIcon.toString(),
                         style: kConditionTextStyle,),
                  ],
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 45.0,right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(message,
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

