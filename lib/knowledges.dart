import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/resume.dart';
import 'package:portfolio/screens/downloadresume.dart';

import 'knowledgelist.dart';
import 'screens/constant.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'knowledge',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Knowledgelist(
          text: "flutter, dart",
        ),
        // SizedBox(
        //   height: 5,
        // ),
        // Knowledgelist(
        //   text: "",
        // ),
        SizedBox(
          height: 5,
        ),
        Knowledgelist(
          text: " Web Hosting",
        ),
        SizedBox(
          height: 5,
        ),
        Knowledgelist(
          text: "GIT knowledge ",
        ),
        SizedBox(
          height: 5,
        ),
        Divider(),
        SizedBox(
          height: defaultPadding / 2,
        ),
  //       TextButton(
  //         onPressed: () {
  //           //  showDialog(
  //           //   context: context,
  //           //   builder: (context) => const DownloadingDialog(),
  //           // );
  //           // NetworkImage(" https://muhammedmuzzammil.com/resumee/?nocache=1");
  //           Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const cv()),
  // );
  //         },
  //         child: FittedBox(
  //           child: Row(
  //             children: [
  //               Text(
  //                 'Download CV',
  //                 style: TextStyle(
  //                   color: Theme.of(context).textTheme.bodyText1!.color,
  //                 ),
  //               ),
  //               SizedBox(
  //                 width: defaultPadding / 2,
  //               ),
  //               SvgPicture.asset('assets/icons/download.svg'),
  //             ],
  //           ),
  //         ),
  //       ),
  //       Container(
  //         margin: EdgeInsets.only(top: defaultPadding),
  //         color: Color(0xFF24242e),
  //         child: Row(
  //           children: [
  //             Spacer(),
  //             IconButton(
  //               onPressed: () {},
  //               icon: SvgPicture.asset('assets/icons/linkedin.svg'),
  //             ),
  //             IconButton(
  //               onPressed: () {},
  //               icon: SvgPicture.asset('assets/icons/twitter.svg'),
  //             ),
  //             IconButton(
  //               onPressed: () {},
  //               icon: SvgPicture.asset('assets/icons/github.svg'),
  //             ),
  //             // IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/linkedin.svg'),
  //             // ),
  //             Spacer()
  //           ],
  //         ),
  //       )
      ],
    );
  }
}
