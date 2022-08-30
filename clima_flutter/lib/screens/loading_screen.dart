import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late Position _pos;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState before calling getPosition()');
    getLocation();
    print('initState after calling getPosition()');
  }

  void getLocation() async {
    _pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(_pos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
