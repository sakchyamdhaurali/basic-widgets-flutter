import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
const AnimatedText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
         appBar: AppBar(
        title: Text('Animated Text', style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 24, 77, 69),
        elevation: 0,
        centerTitle: true,
      ) ,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: 
            [
              TypewriterAnimatedText(
                'Sakchyam Dhaurali', textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,  
              ),
              
              speed: Duration(milliseconds: 100),    
              ), 
            ],
            // pause: Duration(milliseconds: 300),
            // totalRepeatCount: 3,
            stopPauseOnTap: true,
            displayFullTextOnTap: true,
            ),
        
          //  AnimatedTextKit(
          //     animatedTexts: 
          //   [
          //    RotateAnimatedText('A', textStyle: TextStyle(
          //     color: Colors.green,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w700,
          //    ),
          //    ),
          //    RotateAnimatedText('Flutter', textStyle: TextStyle(
          //     color: Colors.blue,
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //    ),
          //    ),
          //      RotateAnimatedText('Developer', textStyle: TextStyle(
          //     color: Colors.red,
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //    ),
          //    ),
          //   ],
          //   // pause: Duration(milliseconds: 300),
          //   // totalRepeatCount: 1,
          //   // stopPauseOnTap: true,
          //   // displayFullTextOnTap: true,
          //   ),
          SizedBox(height: 10,),

            AnimatedTextKit(
              animatedTexts: 
            [
                WavyAnimatedText('A Flutter Developer'),
            ],
            //  totalRepeatCount: 1,
            stopPauseOnTap: true,
            displayFullTextOnTap: true,
            ),
        
          ],
        ),
      ),
    );
  }
}