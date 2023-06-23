import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:temperature/Locator.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
 @override
  void initState() {
    Future<Locator> locator = new Locator().getLocation();
    print(locator);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: ()  {
             initState();
            },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
