import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
const BottomSheetWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
         appBar: AppBar(
        title: Text('BottomSheet Widget'),
        backgroundColor: Color.fromARGB(255, 24, 77, 69),
        elevation: 0,
        centerTitle: true,
      ) ,

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              
              backgroundColor: Theme.of(context).primaryColor,
              // backgroundColor: Colors.black,
              // enableDrag: false,       
              // isDismissible: false,
              elevation: 0,
              context: context,
              builder: (context){
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                  
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      
                        ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Advanced DataBase'),
                          subtitle: Text('ASS'),
                        ),
                          ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Cloud Computing'),
                          subtitle: Text('DKP'),
                        ),
                        ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Network System Administrator'),
                          subtitle: Text('BRP'),
                        ),
                         ListTile(
                          leading: Icon(Icons.book),
                          title: Text('Internship'),
                          // subtitle: Text('BRP'),
                        ),
                        
                        
                        
                  
                    ],
                  ),
                );
              }
            );

          }, 
        child: Text('Show Subjects'),
        ),





        ),
    );
  }
}