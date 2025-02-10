import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({ Key? key }) : super(key: key);

  @override
  _DismissibleState createState() => _DismissibleState();
}

class _DismissibleState extends State<DismissibleWidget> {

List<String> fruits = ['Apple', 'Banana', 'Orange', 'Peach'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Dismissible' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.verified_user),
        )],
        elevation: 0,
      ),

      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index){
          final fruit = fruits[index];
            return Dismissible(
              onDismissed: (direction){
             
                if(direction== DismissDirection.startToEnd)
                {
                  // showModalBottomSheet(context: context, builder: (context){
                  //       return Column();
                  // });
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.red,
                    ));
                }
                else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(fruits[index]),
                    backgroundColor: Colors.green,
                    ));

                }
              },


              key: Key(fruit), 
              background: Container(color: Colors.red),
              secondaryBackground:  Container(color: Colors.green),
             
              //  background: Container(
              //   child: Icon(Icons.abc),
              //  ),

              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                  color: Color.fromARGB(255, 58, 33, 138),
                  child: ListTile(
                    title: Text(fruits[index],
                    ),
                  ),
                ),
              ));

        }),
      
    );
  }
}