
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Must match the number of tabs
      child: Column(
        children: [
          const TabBar(
            indicatorWeight: 3,
            indicatorColor: Colors.black,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Color.fromARGB(255, 68, 63, 63),
            labelPadding: EdgeInsets.only(right: 10),
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.grid_view_sharp)),
              Tab(icon: Icon(Icons.play_circle_outline)),
              Tab(icon: Icon(Icons.person_pin_outlined)),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                _buildGridView(), // Grid for first tab
                _buildGridView(), // Grid for second tab
                _buildGridView(), // Grid for third tab
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to return a GridView
  Widget _buildGridView() {
    return GridView.builder(
      
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 columns like Instagram Reels grid
        // crossAxisSpacing: 0,
        mainAxisSpacing: 2.0,
        childAspectRatio: 12/16 // **4:5 aspect ratio for Reels-like layout**
      ),
      itemCount: 10, // Number of items
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image:AssetImage('assets/me2.jpg'),
            ),
          ),
        );
      },
    );
  }
}
