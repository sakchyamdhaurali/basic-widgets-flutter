import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({ Key? key }) : super(key: key);

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<DropdownWidget> {

  String selectedValue = 'Orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
        title: Text('Dropdown Widget' , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: Icon(Icons.home, color: Colors.white,),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.search, color: Colors.white,),
        )],
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Day 13, Dropdown Widget"),
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              
              color: Colors.grey.shade400,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: DropdownButton<String>(
                  style: TextStyle(color: Colors.black),
                  icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.black),
                  iconSize: 30,
                  elevation: 0,
                  dropdownColor: Colors.grey.shade300,
                  value: selectedValue,
                  isExpanded: true,
                   onChanged: (String? newvalue){
                  setState(() {
                    selectedValue = newvalue!; 
                  });
                   },
                
                
                  items:  <String>[ 'Orange', 'Apple', 'Banana', ' Mango', 'Peach']
                  .map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      
                      value: value,
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(value));
                  }).toList(),
                
                ),
              ) ,
            ),
          ],
        ),
      ),
      
    );
  }
}