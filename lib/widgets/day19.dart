import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({Key? key}) : super(key: key);

  @override
  _Day19State createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: 500,
                  // color: Colors.green,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 450,
                          decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://wallpapers.com/images/hd/bart-simpson-from-the-simpsons-6wvtyk3vwcidzuw7.jpg'),fit: BoxFit.fill,
                          ),
                          ),
                        ),
                      ),

                         Positioned(
                        left:30,
                        top:60,
                        child: Icon(Icons.arrow_back, color: Colors.white,),
                      ),

                      Positioned(
                        right:30,
                        top:60,
                        child: Icon(Icons.favorite_outline, color: Colors.white,),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 24,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/me.jpeg'),
                          
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    "Sakchyam Dhaurali: A Flutter Developer",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Consistency is the key",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 rowIconText('20', (Icons.favorite_rounded)),
                  rowIconText('34', (Icons.upload_outlined)),
                   rowIconText('50', (Icons.message_outlined)),
                    rowIconText('100', (Icons.face_5_outlined)),
           
               

                     
              


                
                ],
              ),
            ),

              Divider(color: Colors.black26,),


             Container(
              padding: EdgeInsets.all(12),
                  child: Text(
                    "A Flutter Developer specializes in building cross-platform applications for mobile, web, and desktop using Flutter and Dart. They design responsive UIs, manage state, integrate APIs, optimize performance, and fix bugs. Additionally, they work with Firebase, RESTful APIs, and third-party libraries, ensuring smooth animations and seamless functionality before deploying apps to the Play Store and App Store.",
                    textAlign: TextAlign.justify,
                  ),
                ),


          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return  Row(
      children: [
        Text(
        text,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon ,size: 20,
        ),
      ],
    );
  }
}
