import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Imagewidget extends StatelessWidget {
const Imagewidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text('Image Widget',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.red,
        
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(top: 25),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                Text('Day8: Network Image',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
            
                SizedBox(height: 20),
            
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    
                    
                     color: Colors.green,
            
                    image: DecorationImage(
                    
                      image: NetworkImage('https://creativescrapbooker.ca/wp-content/uploads/2019/12/day8-01-1024x1024.jpg'),
                    fit: BoxFit.cover,
                    
                    
                    ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.red,
                      spreadRadius: 5,
            
                    )
                  ]
            
                  ),
                  //  Image.network(
                  //   fit: BoxFit.cover,
                  //   'https://creativescrapbooker.ca/wp-content/uploads/2019/12/day8-01-1024x1024.jpg'
                    
                  //   ),
                ),
              SizedBox(height: 50,),

             Text('Sakchyam Dhaurali',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
            

              SizedBox(height: 20 ,),
              
            
              Container(
                  width: 250,
                  height: 250,
                  decoration:  BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.all(Radius.circular(40)),
                    image: DecorationImage(
                    
            
                      image: AssetImage('assets/me.jpeg'),
                      fit: BoxFit.cover,
                     ),
                    
                    

                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 2,
                      color: Colors.red,
                    ),
                  ],
                    ),
                 
                    ),

SizedBox(height: 20,),
             Text('Flutter Developer',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
            SizedBox(height: 20,),

            Container(
                  width: 300,
                  height: 300,
                  child: CachedNetworkImage(imageUrl: 'https://i.ytimg.com/vi/6wvD-Z-9ZRM/maxresdefault.jpg',
                  placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
            ),
                  ]
            ,
            
                  ),
          ),
        ),
      ),
            );
          
        
      
    
  }
}