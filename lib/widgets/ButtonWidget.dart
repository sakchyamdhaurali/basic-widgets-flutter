
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
const ButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("TextButton And Elevated Button", style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.deepPurple,
      
      ),

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 70,
            width: 200,
              child: TextButton(
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  elevation:WidgetStatePropertyAll(20),
                  backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 13, 87, 130)),
                  padding:WidgetStatePropertyAll(EdgeInsets.all(20)
                  ),
              
                  overlayColor: WidgetStatePropertyAll(Color.fromARGB(255, 15, 87, 164))
                  
                ),
                onPressed: (){
                  print("Clicked");
                }, 
              child: Text("Click Me", 
              style: TextStyle(
                
                color: Colors.white,
                fontSize: 20,
              ),
              ),
                      
               ),
            ),

          SizedBox(height: 20,),

          Container(
            height: 70,
            width: 200,
            child: ElevatedButton(onPressed: (){
              print("Elevated Button CLicked");
            }, 
            style: ButtonStyle(
              overlayColor: WidgetStatePropertyAll(Colors.red),
              backgroundColor: WidgetStatePropertyAll(Colors.amber),
              padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))
            ),
            child: Text('Press me', 
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            
            ),
            
            
            ),
          ),


          ],
        ),
      ),


    );

  }
}