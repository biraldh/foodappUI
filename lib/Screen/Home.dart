import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainPage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children: [
          SizedBox.expand(
            child: Image.asset('lib/Assets/lettuce2.jpg', fit: BoxFit.cover,),
          ),
          const Padding(
            padding: EdgeInsets.all(50),
            child: Text("Exlpore ", style: TextStyle(fontSize: 60, color: Colors.white),),
          ),
          const Positioned(
            top: 60,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text("a wide ", style: TextStyle(fontSize: 60, color: Colors.white),),
            ),
          ),
          const Positioned(
            top: 120,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text("variety of", style: TextStyle(fontSize: 60, color: Colors.white),),
            ),
          ),
          const Positioned(
            top: 180,
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text("seeds", style: TextStyle(fontSize: 60, color: Colors.white),),
            ),
          ),
          Positioned(right:10,top:65,
              child:Container(
                  height: 130,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/Assets/plant.com.png')

                      )
                  )
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[300],
                  borderRadius: BorderRadius.circular(20),

                ),
                height: 70,
                width: screenWidth/1.1,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainpage()),
                    );
                  },
                  child: Center(
                      child: Text("Start your green journey!", style: TextStyle(color: Colors.black, fontSize: 20),)),
                ),
              ),
            ),
          )
        ]
      ),
    );
  }
}
