
import 'package:flutter/material.dart';
import 'package:temperature/Locations.dart';
import 'package:temperature/Locator.dart';
import 'package:temperature/networking.dart';
import 'package:temperature/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? lattitude;
  double? longitude;
  var ApiKey;

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async{
   Locator locator = Locator();
   await locator.getLocation();
   lattitude = locator.Lattitude;
   longitude = locator.Longitude;
   //Ahora traemos la temperatura
   ApiKey = 'ab225a718a4dd4e8290c8a649166e7bc';
   //Ahora obtenemos la temperatura
   Network networking = Network(url:'https://api.openweathermap.org/data/2.5/weather?lat=$lattitude&lon=$longitude&appid=$ApiKey&units=metric');
   var weathherData = await networking.getWeather();
   
   //Cargamos la nueva pantalla
    Navigator.push(context as BuildContext, MaterialPageRoute(builder: (context){
      return Locations(locationWeather: weathherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.black,
          size: 50.0,
        ),
        ),
    );
  }
}
