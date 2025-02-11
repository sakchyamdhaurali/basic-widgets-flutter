import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
const StackWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text('Stack Widget' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.search, color: Colors.black,),
        )],
        elevation: 0,
      ),

  body: Stack(children: [
    Positioned(
      // top: 100,
      child: Container(
        height:  MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        color: Colors.black, 
        image: DecorationImage(
          image: AssetImage('assets/me.jpeg', ),
          fit: BoxFit.cover,   
        ),
        ),
        
      ),
    ),

    Positioned(
      top: 80,
      left: 100,
      child: Container(
        child: Text('Sakchyam Dhaurali',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ))
  ],),





      // body: Container(
      //   color: Colors.blue,
      //   child: Center(
      //     child: Stack(
            
      //       children: [
              
      //         Center(child: Container(width: MediaQuery.of(context).size.width, height: 400, color: Colors.red,)),
      //         Center(child: Container(width: 200, height: 200, color: Colors.yellow,)),
      //         Center(child: Container(width: 100, height: 100, color: Colors.green,)),


      //       ],

      //     ),
      //   ),
      // ),
    );
  }
}