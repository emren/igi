import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:igi/pages/onboarding1.dart';
import 'package:igi/services/size_config.dart';
import 'package:provider/provider.dart';

import 'models/ilan_portfoy.dart';
import 'models/kullanici.dart';
import 'models/mapper.dart';

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
            return MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => Mapper(),
                ),
                ChangeNotifierProvider(
                  create: (context) => IlanPortfoy(),
                ),
                ChangeNotifierProvider(
                  create: (context) => Kullanici(),
                ),
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Onboarding1(),
                //home: GirisFirma(),
              ),
            );
          },
        );
      },
    );
  }
}
