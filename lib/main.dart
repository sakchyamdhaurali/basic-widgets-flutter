import 'package:flutter/material.dart';
import 'package:testapp/widgets/ButtonWIdget.dart';
import 'package:testapp/widgets/ListGrid.dart';
import 'package:testapp/widgets/rowcols.dart';

import 'widgets/Container_Sized.dart';

void main()
{
  runApp(MyApp());
}

// void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        // brightness: Brightness.dark, 
        primaryColor: Colors.deepPurple,
       useMaterial3: true,
      //  colorSchemeSeed: Colors.red,
      ),


      // home: Container_Sized(),
      home: ListGrid(),
      

    );
  }
}