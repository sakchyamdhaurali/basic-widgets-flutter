import 'package:flutter/material.dart';
import 'package:testapp/widgets/alert.dart';
import 'package:testapp/widgets/drawer.dart';
import 'package:testapp/widgets/imagewidget.dart';
import 'package:testapp/widgets/snackbar.dart';

class Bottomnav extends StatefulWidget {
const Bottomnav({ Key? key }) : super(key: key);

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {

int selectedindex = 0;

// List<Widget> widgets = [
//   Text("Home"),
//   Text("Add"),
//   Text("Search"),
//   Text("Person"),

// ];

void onTapped(int index){
  setState(() {
    selectedindex = index;
    // print(widgets[selectedindex]);
  });
  _pageController.jumpToPage(index);
}

PageController _pageController = PageController() ;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //   appBar: AppBar(
      //   title: Text('Bottom Navigation', style: TextStyle(color: Colors.white),),
      //   backgroundColor: Color.fromARGB(255, 24, 77, 69),
      //   elevation: 0,
      //   centerTitle: true,
      // ) ,

    // body: Center(child: widgets.elementAt(selectedindex)),

    body: PageView(
    controller: _pageController,
    children: [
      DrawerWidget(),
      Imagewidget(),
      Alert(),
      SnackWidget(),
 

    ],
    
    ),

     bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>
     [

      BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.add,), label: 'Add'),
      BottomNavigationBarItem(icon: Icon(Icons.search,), label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.person,), label: 'Profile'),




     ],
currentIndex: selectedindex,
selectedItemColor: Colors.green,
unselectedItemColor: Colors.grey,
onTap: onTapped,
     ),

    );
  }
}