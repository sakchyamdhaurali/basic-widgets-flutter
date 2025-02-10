import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
const Alert({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog'),
      backgroundColor: Color.fromARGB(255, 206, 26, 26),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),

      body: Center(

        child: ElevatedButton(
          
          onPressed: (){
            _showAlertDialog(context);
          }, 
          child: Text('Show Alert')),
      ),


    );
   
  }
}

    Future<void> _showAlertDialog(BuildContext context) async{
      return showDialog(context: context, 
      builder: (BuildContext context){
          return AlertDialog(
            // backgroundColor: Colors.red,
            scrollable: true,
            title: Text('Do you wanna be my Valentine?', style: TextStyle(
                fontWeight: FontWeight.bold)
            
            ) ,
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text('Choose one option.'),
              ],),
            ),
            actions: [
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: 
              Text('Yes, Sure.', style: TextStyle(
                color: Colors.green,
                fontSize: 14), )),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Definitely', style: TextStyle(fontSize: 14, color: Colors.green)))
            ],
          );
      }
      );
    }
