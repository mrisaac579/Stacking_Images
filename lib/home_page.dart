import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Stacking Image',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 241, 241, 236),
      //When we have lot of images we apply stack widget and directed using positioned widget
      body: Stack(
        children: [
          Center(
            child: Container(
              // mainAxisAlignment: MainAxisAlignment.center,
              child: Image(
                image: AssetImage('assets/images/Logo.png'),
                // color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 10,
            child: Image(
              image: AssetImage('assets/images/top_position.png'),
            ),
          ),
          // Positioned(
          //   right: 80,
          //   child: Container(
          //     child: Image.asset('assets/images/bottom_position.png'),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bottom_position.png',
              width: 180,
            ),
          ),
        ],
      ),
    );
    // Column(
    //   children: [
    //     Padding(
    //       padding: EdgeInsets.all(8.0),
    //       child: Container(
    //         height: 40,
    //         width: 40,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ],
  }
}
