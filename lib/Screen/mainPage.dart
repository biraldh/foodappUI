import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.brown[700],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('lib/Assets/pngwing.com.png', height: 100,),
        ),
        leadingWidth: 60,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Sunny, 30", style: TextStyle(color: Colors.white, fontSize: 18),),
            Text("Monday, 13 Feb 2024", style: TextStyle(color: Colors.grey, fontSize: 18),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey ,
            ),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart, color: Colors.white,))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Perfect', style: TextStyle(fontSize: 40, color: Colors.white)),
                    TextSpan(
                        text: ' for\nthis season!',
                        style: TextStyle(fontSize: 40, color: Colors.grey)),
                  ]
                )
            ),
            Container(
              height: screenHeight/3.5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        color: Colors.white,
                        height: screenHeight/3.5,
                        width: screenWidth/1.4,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 80, right: 80, bottom: 30),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.greenAccent[100],
            borderRadius: BorderRadius.circular(30)
          ),
          child: GNav(
              tabs: [
                GButton(icon: Icons.home, iconColor: Colors.black12,),
                GButton(icon: Icons.description, iconColor: Colors.black12,),
                GButton(icon: Icons.account_circle, iconColor: Colors.black12,)
              ],
            ),
          ),
      ),
    );
  }
}
