import 'package:flutter/material.dart';
import 'package:portfolio/screens/constant.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color.fromARGB(255, 21, 21, 29),
      
        // color: Color.fromARGB(255, 25, 24, 25),
        child: Column(
          children:  [   SizedBox(height: 43,),
    
            
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/fayis1.jpeg",),
             
              
            ),
            SizedBox(height: 3,),
            
            Text('MUhammed Fayis', style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: 3,),
            Text("Developing Android | IOS & Web through Flutter framework ", textAlign: TextAlign.center, 
            style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ), 
            SizedBox(height: 3,),
          ],
        ),
      ),
    );
  }
}
