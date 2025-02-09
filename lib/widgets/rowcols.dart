import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns' , style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.deepPurple,

      ),

    
      body: Container(
        height: h,
        width: w,
        color: Colors.black12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
        
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
        
        Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
        
                ],
              ),
        

         Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
        
              Container(
                height: 150,
                width: 150,
                color: Color.fromARGB(255, 59, 22, 152),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Day 2: Rows and Columns" , style: TextStyle(color: Colors.white , fontSize: 20),)),
                ),
              ),
        
        Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
        
        
                ],
              ),
        
         Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                children: [
                    Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
        
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
        
        Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
        
         
                ],
              ),
        
         
          
        ],
        
        ),


        ),




    );
  }
}