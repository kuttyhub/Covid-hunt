import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import './screens/tracker.dart';

Future<InitializationStatus> _initGoogleMobileAds() {
  return MobileAds.instance.initialize();
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await _initGoogleMobileAds();
  // await MobileAds.instance.updateRequestConfiguration(RequestConfiguration(
  //     testDeviceIds: <String>["91A3FA3C3AD300A15606BECD9819E691"],));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {runApp(MyApp());} );

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Hunt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Quicksand',
        primaryColor: Colors.teal,
      ),
      home: Tracker(),
    );
  }
}
