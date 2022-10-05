import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'screens/constant.dart';

class Knowledgelist extends StatelessWidget {
  final String text;
  const Knowledgelist({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // SvgPicture.asset("assets/icons/check.svg"),
        Icon(Icons.check,color: primaryColor,),
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(text),
      ],
    );
  }
}
