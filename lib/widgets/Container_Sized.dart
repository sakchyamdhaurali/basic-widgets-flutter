import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container and SizedBox',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          // color: Colors.black38,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 18, 76, 131),
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50) , 
              bottomRight: Radius.circular(50),
              ), 
              boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  spreadRadius: 3,
                  // color: Colors.cyanAccent
                  ),
              ],
          ),
          
          child: const Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                "Day 1: Container", style: TextStyle(color: Colors.white , fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
