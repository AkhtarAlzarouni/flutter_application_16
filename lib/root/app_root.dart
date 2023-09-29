
import 'package:flutter/material.dart';

import 'package:flutter_application_16/screens/splash.dart';


class AppRoot
 extends StatelessWidget {
  const AppRoot
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 240, 236, 237) 
      ),
      
    );
  }
}
