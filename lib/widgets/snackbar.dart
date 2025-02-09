import 'package:flutter/material.dart';


class SnackWidget extends StatelessWidget {
const SnackWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

     appBar: AppBar(
        title: Text('Snackbar' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.verified_user),
        )],
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
             

              final snackBar = SnackBar(


                // backgroundColor: Color.fromARGB(255, 100, 152, 183),

                //duration of showing Snackbar
                duration: const Duration(
                  milliseconds: 3000,
                ),
                
                content: Text("Message from SnackBar", 
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                
                ),
                
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),


                action: SnackBarAction(label: 'Undo',
                textColor: Colors.blue,
                 onPressed: (){}
                 ),
                );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);



            },
           
           
            child: Text('Show Message', style: TextStyle(
              fontSize: 20,
              
            ),)
            ,),),
      
      ),
    );
  }
}