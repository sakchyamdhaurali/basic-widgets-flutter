import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 24, 77, 69),
          child: ListView(
            children: [
              DrawerHeader(
               padding: EdgeInsets.zero,
                child: Container(
                  padding: EdgeInsets.all(10),
                  // color: Colors.black54,
                  child: Row(
                  
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D5603AQEP_R_7T-G20A/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1693224802374?e=2147483647&v=beta&t=njH_rz9TnJT13tc8Bhbzn7yFPIvbkows5c6EEqV7Kus'),
                      ),

                      SizedBox(width: 5,),

                      Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text('Sakchyam Dhaurali', style: TextStyle(fontWeight: FontWeight.bold),),
                 Text('sakchyamdhaurali5@gmail.com', style: TextStyle(fontSize: 12),),

                 Text('Flutter Developer', style: TextStyle(fontSize: 12),),
                        ],
                        
                      ),
                   
                  ],),

                  
                  
                ),
              
                 ),
               
                 
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('All mail'),
              ),
                ListTile(
                leading: Icon(Icons.star_border_outlined),
                title: Text('Starred'),
              ),
                ListTile(
                leading: Icon(Icons.label_important_outline_sharp),
                title: Text('Important'),
              ),
                ListTile(
                leading: Icon(Icons.send),
                title: Text('Sent'),
              ),
                ListTile(
                leading: Icon(Icons.outbox),
                title: Text('Outbox'),
              ),

                ListTile(
                leading: Icon(Icons.drafts_outlined),
                title: Text('Drafts'),
              ),

                ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text('Spam'),
              ),

                ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
              ),

              Divider(
                indent: 55,
                color: Colors.black26,
              ),

                ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),

                ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text('Send feedback'),
              ),

                ListTile(
                leading: Icon(Icons.help_center_rounded),
                title: Text('Help'),
              ),

                 ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),

              

            ],
          ),

          
        ),
      
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
        backgroundColor: Color.fromARGB(255, 24, 77, 69),
        elevation: 0,
      ) ,

    body: Center(
      child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome User, Today is Day 7,',
           style: TextStyle(
            fontSize: 24)
          ),
          SizedBox(height: 10,),
          Text('And we are creating a Drawer today.',
          style: TextStyle(
            color: Color.fromARGB(255, 24, 77, 69),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
      ),
          ),
    ),


    );
  }
}