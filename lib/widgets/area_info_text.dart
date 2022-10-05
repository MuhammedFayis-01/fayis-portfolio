import 'package:flutter/material.dart';
import 'package:portfolio/screens/constant.dart';

class AreaInfoText extends StatelessWidget {
  final String title;
  final String text;
  const AreaInfoText({
    required this.title,required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text,
            
          ),
        ],
      ),
    );
  }
}
