import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({ Key? key }) : super(key: key);

  @override
  _ListGridState createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits= ['Orange ', 'Apple','Mango' ,'Banana'];
  Map fruits_color = {
    'fruits': ['Orange Juice', 'Apple Juice','Mango Juice' ,'Banana Juice'],
    'colors': ['orange','red','green', 'yellow'] 
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: false,
        elevation: 0,
      ),

      body: Container(
    //       child: ListView.builder(
    //         itemCount: fruits.length,
    //         itemBuilder: (context, index ){
    //          Color tileColor;
    // if (index == 0) {
    //   tileColor = Colors.orange;
    // } else if (index == 1) {
    //   tileColor = Colors.red;
    // } else if (index == 2) {
    //   tileColor = Colors.green;
    // } else if (index == 3) {
    //   tileColor = Colors.yellow;
    // } else {
    //   tileColor = Colors.white; // Default color if index is out of range
    // }

    //           return Card(
    //             child: ListTile(
    //               title: Text(fruits_color['fruits'][index]),
    //               tileColor: tileColor,
    //               subtitle: Text(fruits_color['colors'][index]),
    //               leading: Icon(Icons.free_breakfast_sharp),
    //               hoverColor: Colors.black,
    //               onTap: (){
    //                 print(fruits_color['colors'][index]);
    //               },
    //             ),
    //           );
    //         }
            
    //         ),
      
child: GridView.builder(
  itemCount: fruits.length,
  
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    
    crossAxisCount: 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
    childAspectRatio: 2/3,
    ), 
  itemBuilder: (context , index){
 
    return Card(
      
      color: Colors.black54,
      child: Center(

        child: Text(fruits[index], style: TextStyle(color: Colors.white),),
        ),
    );
  }
  ),
        ),
      
    );
  }
}