import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:igi/pages/giris.dart';
import 'package:igi/pages/giris_aday.dart';
import 'package:igi/pages/giris_firma.dart';
import 'package:igi/pages/onboarding.dart';
import 'package:igi/pages/onboarding1.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Onboarding1(),
              //home: GirisFirma(),
            );
          },
        );
      },
    );
  }
}
