import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/screens/constant.dart';
import 'package:portfolio/widgets/coding.dart';
import 'package:portfolio/widgets/my_info.dart';
import 'package:portfolio/widgets/skills.dart';

import '../knowledgelist.dart';
import '../knowledges.dart';
import 'area_info_text.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // AspectRatio(aspectRatio: 1.23),
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children:  [
                 const   AreaInfoText(
                    title: "Residency",
                    text: "India",
                  ),
                   const    AreaInfoText(
                    title: "District",
                    text: "Kerala",
                  ),
                const    AreaInfoText(
                    title: "City",
                    text: "Kozhikode",
                  ),
               const     AreaInfoText(
                    title: "Age",
                    text: "23",
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding,),
                  Coding(),
                  Knowledges(),
                 
                  
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}


