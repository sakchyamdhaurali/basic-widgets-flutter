import 'package:flutter/material.dart';
import 'package:testapp/widgets/day20_profile.dart';

class Day20 extends StatelessWidget {
  const Day20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'sakchyamdhaurali10',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        titleSpacing: 1,
        leading: Icon(Icons.arrow_back_ios_new),
        actionsPadding: EdgeInsets.all(12),
        actions: [
          Icon(
            Icons.notifications_outlined,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_horiz_outlined,
            size: 30,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 110,

              // color: Colors.green,
              child: Row(
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 10,top:5),
                    padding: EdgeInsets.all(12),
                    width: 120,
                    // color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/dp.jpg'),
                          radius: 40,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.cyanAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Sakchyam Dhaurali',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                personalDetails('21', 'posts'),
                                SizedBox(
                                  width: 10,
                                ),
                                personalDetails('1487', 'followers'),
                                SizedBox(
                                  width: 10,
                                ),
                                personalDetails('554', 'following'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              // color: Colors.amber,
              height: 40,
              child: Column(
                children: [
                  Text('~ I am a human but I\'m always the one who stands at the pinnacle of all races'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.red,
              height: 80,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFF0095f6),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xFFEFEFEF)),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              side: BorderSide(color: Colors.black)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Message',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: ElevatedButton(
                        onPressed: () {
                          print("Elevated Button CLicked");
                        },
                        style: ButtonStyle(
                          padding:
                              WidgetStatePropertyAll(EdgeInsets.only(right: 0)),
                          backgroundColor:
                              WidgetStatePropertyAll(Color(0xFFEFEFEF)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                        child: Icon(Icons.person_add_outlined)),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              // color: Colors.black,
              child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-1/279359187_3218757161693226_8065903919639293101_n.jpg?stp=dst-jpg_p320x320_tt6&_nc_cat=101&ccb=1-7&_nc_sid=e99d92&_nc_ohc=Tzv6q_kyNUcQ7kNvgFRDo02&_nc_oc=AdgDW9C8wGEX0PIQiW9foFbtilUEqPa-p5Ahvba8K5T-drudhU18BdpQuDfy5W2K9Xk&_nc_zt=24&_nc_ht=scontent.fktm17-1.fna&_nc_gid=9wXn4ZYqMdWppj82CwG8oA&oh=00_AYFOIocKatzLAhl0fGUVi5qBELPzLY4uNLQ7K8WZzA6VGQ&oe=67DBA47D'),fit: BoxFit.fitWidth),
                            shape: BoxShape.circle,
                          color: Colors.black
                          ),
                        ),
                        SizedBox(height: 4,),

                        Text('Highlights', style: TextStyle(
                          fontSize: 12,
                        ),),
                      ],
                    );
                  }),
            ),
            Expanded(
                child: Container(
              // color: Colors.teal,
              child: TabBarWidget(),
            ))
          ],
        ),
        // color: Colors.red,
      ),
    );
  }

  Widget personalDetails(String text1, String text2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
