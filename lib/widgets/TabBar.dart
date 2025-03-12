import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
const TabBarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.blue,

          backgroundColor: const Color.fromARGB(255, 75, 186, 77),
          title: Text('TabBar'),
          bottom: TabBar(
            indicatorWeight: 5,
            indicatorColor: Colors.black,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: const Color.fromARGB(255, 86, 81, 81),
            labelPadding: EdgeInsets.only( right: 10),
            labelColor: Colors.black,
            tabs: 
          [
          
           Tab(icon: Icon(Icons.chat, color: Colors.black,), text: 'Chats',),
           Tab(icon: Icon(Icons.message_rounded, color: Colors.black,), text: 'Status',),
           Tab(icon: Icon(Icons.call, color: Colors.black,), text: 'Calls',),
           Tab(icon: Icon(Icons.call_missed, color: Colors.black,), text: 'Missed Call',),


          ]),
        ),

        body: TabBarView(children: 
        [
          Center(child: Container(child: Text("CHATS", style: TextStyle(fontSize: 30),),)),
          Center(child: Container(child: Text("STATUS", style: TextStyle(fontSize: 30),),)),
          Center(child: Container(child: Text("CALLS", style: TextStyle(fontSize: 30),),)),
          Center(child: Container(child: Text("MISSED CALLS", style: TextStyle(fontSize: 30),),)),


        ]
        ),
      ),
    

    );
  }
}