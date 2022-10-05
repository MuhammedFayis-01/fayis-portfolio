import 'package:flutter/material.dart';

import '../screens/constant.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
      padding:  EdgeInsets.symmetric(vertical: defaultPadding),
      child: Text(
        "Skills",
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ),
    Row(
      children:const  [
        Expanded(child: AnimatedCircularProgressBarIndicator(percentage: 0.8,label: "Flutter",),),
        // SizedBox(width: defaultPadding,),
        //  Expanded(child: AnimatedCircularProgressBarIndicator(percentage: 0.65,label: "Nodejs",),),
         SizedBox(width: defaultPadding,),
          Expanded(child: AnimatedCircularProgressBarIndicator(percentage: 0.75,label: "Hosting",),),
          SizedBox(width: defaultPadding,),
          Expanded(child: AnimatedCircularProgressBarIndicator(percentage: 0.6,label: "FireBase",),),
      ],
    )
      ],
    );
  }
}

class AnimatedCircularProgressBarIndicator extends StatelessWidget {
  const AnimatedCircularProgressBarIndicator({required this.percentage,required this.label,
    Key? key,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  backgroundColor: darkColor,
                  color: primaryColor,
                ),
                Center(
                    child: Text(
                  (value * 100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                )),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
