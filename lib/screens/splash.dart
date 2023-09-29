import 'package:flutter/material.dart';
import 'package:flutter_application_16/screens/login.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context,
       MaterialPageRoute(
        builder: (context) => LoginScreen()
        ));
    },);
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
        Center(
          child: RippleAnimation(
              child: CircleAvatar(
                minRadius: 75,
                maxRadius: 75,
                backgroundImage: AssetImage("assets/6.png"),
              ),
              color: Color.fromARGB(255, 130, 159, 202),
              delay: const Duration(milliseconds: 300),
              repeat: true,
              minRadius: 75,
              ripplesCount: 6,
              duration: const Duration(milliseconds: 6 * 300),
            ),
        ),

          Text("App",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 56, 52, 117)),),
           
      ],),
    );
  }
}