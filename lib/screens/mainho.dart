import 'package:flutter/material.dart';
import 'package:flutter_application_16/screens/home.dart';
import 'package:flutter_application_16/screens/products_screen.dart';
import 'package:flutter_application_16/screens/search_screen.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 97, 108, 176),
          onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
        },
        child: Icon(Icons.home,),),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 99, 119, 178),
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) {
              return ["Home","Theme Mode"].map((e) {
                return PopupMenuItem(child: Text(e),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                  
                },
                );
              }).toList();
            },
            offset: Offset(4, 15),)
          ],
          title: Text("App"),

          bottom: TabBar(
            unselectedLabelColor: Color.fromARGB(255, 201, 203, 204),
            indicatorColor: const Color.fromARGB(255, 255, 255, 255),
            tabs: [
             
            Tab(
          
           text: "Home",),
           Tab(
           
           text: "Prodect",),
           Tab(
          
           text: "Search",),
           
          ]
        ),
      
      ),

      body: TabBarView(children: [
        HomeScreen(),
        SearchScreen(),
        ProductsScreen()
        
        
      ]),
    ),
    );
  }
}