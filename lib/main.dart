import 'package:flutter/material.dart';
// import 'package:testapp/widgets/Container_Sized.dart';
// import 'package:testapp/widgets/rowcols.dart';
// import 'package:testapp/widgets/ButtonWIdget.dart';
// import 'package:testapp/widgets/ListGrid.dart';
// import 'package:testapp/widgets/dismissible.dart';
// import 'package:testapp/widgets/drawer.dart';
// import 'package:testapp/widgets/imagewidget.dart';
// import 'package:testapp/widgets/snackbar.dart';
// import 'package:testapp/widgets/alert.dart';
import 'package:testapp/widgets/bottomSheet.dart';


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
        brightness: Brightness.dark, 
        primaryColor: Colors.deepPurple,
       useMaterial3: true,
      //  colorSchemeSeed: Colors.red,
      ),


 
        home: BottomSheetWidget(),

      

    );
  }
}