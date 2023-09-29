import 'package:flutter/material.dart';
import 'package:flutter_application_16/screens/mainho.dart';

import 'package:shared_preferences/shared_preferences.dart';



class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();

   TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LogIn Page'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              
               const Text('Password'),
              const SizedBox(
                height: 5, 
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                ),
              ),
                SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                 onPressed: ()async{
                //   //we will trying to print input
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setString("email", emailController.text);

                  prefs.setString("Password", passwordController.text);

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainHome(),));

                },
                child: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 30,
                  ),
              
                ),
              ),
              // TextButton(onPressed: (){
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              // }, child: Text("Registration"))
            ],
          ),
        ),
      ),
    );
  }
}