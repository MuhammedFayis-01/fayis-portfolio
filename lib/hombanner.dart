import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'screens/constant.dart';

class Homebanner extends StatelessWidget {
  const Homebanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio( aspectRatio: 3, child: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/m5.jpeg",fit: BoxFit.cover, ),
        Container(
          color: darkColor.withOpacity(.65),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Look for the magic in every moment", style: Theme.of(context).textTheme.headline3!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Mybuildanimatedtext(),
              SizedBox(height: defaultPadding,),
               ElevatedButton(onPressed: (){},style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding*2, vertical: defaultPadding),
                backgroundColor: primaryColor
               ) ,
                child: Text('Explore Now', style: TextStyle(color: darkColor),),)
            ],
          ),
        )
      ],

    ),
    );
  }
}

class Mybuildanimatedtext extends StatelessWidget {
  const Mybuildanimatedtext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          Fluttercodetext(),
          SizedBox(width: defaultPadding/2,),
          Text(' I build '),
          AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            'responsive web and mobile appiaction', speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            'App UI for E-commerece, social media, business and personal blog and online store website', speed: Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            'Chat application for both IOS and android with different Theme', speed: Duration(milliseconds: 60),
          ),
           TyperAnimatedText(
            'Digital marketing Platform', speed: Duration(milliseconds: 60),
          )
          ]),
          SizedBox(width: defaultPadding/2,),
           Fluttercodetext(),
        ],
      ),
    );
  }
}

class Fluttercodetext extends StatelessWidget {
  const Fluttercodetext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor) ),
      TextSpan(text: '>',  )
    ]));
  }
}
