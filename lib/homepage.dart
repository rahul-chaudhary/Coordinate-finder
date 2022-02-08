import 'package:flutter/material.dart';
import 'package:geo_locator/geo_locator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomePage> {
  GeoLocator geoLocator = GeoLocator();
  String pos = "...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: SelectableText(pos),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // pos = geoLocator.getLatitude();
                      pos =
                          "${geoLocator.getLatitude()}, ${geoLocator.getLongitude()}";
                    });
                  },
                  child: const Text("Get Location"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
