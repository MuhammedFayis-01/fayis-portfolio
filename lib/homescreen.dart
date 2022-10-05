import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/recommentation.dart';
import 'package:portfolio/screens/constant.dart';
import 'package:portfolio/widgets/responsive.dart';

import 'screens/mainscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Mainscreen(
      childrenl: [
        Homebanner(),
        HighlightsInfo(),
        Myprojects(),
        // Recomendation1()
      ],
    );
  }
}

// class Recomendation1 extends StatelessWidget {
//   const Recomendation1({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Our collebration',
//             style: Theme.of(context).textTheme.headline6,
//           ),
//           SizedBox(
//             height: defaultPadding,
// ),
// Row(
//   children: List.generate(
//     demo_recommendations.length,
//     (index) => Padding(
//       padding: const EdgeInsets.only(right: defaultPadding),
//       child: Recommendationcard(
//         recommendation: demo_recommendations[index],
//       ),
//     ),
//   ),
// )
//         ],
//       ),
//     );
//   }
// }

// class Recommendationcard extends StatelessWidget {
//   final Recommendation recommendation;
//   const Recommendationcard({
//     Key? key,
//     required this.recommendation,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(defaultPadding),
//         width: MediaQuery.of(context).size.width * 0.2,
//         color: secondaryColor,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               recommendation.name!,
//               style: Theme.of(context).textTheme.subtitle2,
//             ),
//             SizedBox(
//               height: defaultPadding,
//             ),
//             Text(
//               recommendation.source!,
//             ),
//             SizedBox(
//               height: defaultPadding,
//             ),
//             Text(
//               recommendation.text!,
//               maxLines: 4,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(height: 1.5),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class Myprojects extends StatelessWidget {
  const Myprojects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects<Demo>",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: ProjectGridView(
            crossaxiscount: 1,
            childaspectRatio: 1.7,
          ),
          mobileLarge: ProjectGridView(
            crossaxiscount: 2,
          ),
          desktop: ProjectGridView(),
          tablet: ProjectGridView(childaspectRatio: 1.1),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  final int crossaxiscount;
  final double childaspectRatio;
  const ProjectGridView({
    this.crossaxiscount = 3,
    this.childaspectRatio = 1.3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: childaspectRatio,
          crossAxisCount: crossaxiscount,
          mainAxisSpacing: defaultPadding,
          crossAxisSpacing: defaultPadding),
      itemBuilder: (context, index) {
        return ProjectCard(
          project: demo_projects[index],
        );
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
    Key? key,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          // SizedBox(height: defaultPadding,),

          Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          // SizedBox(height: defaultPadding,),
          Spacer(),

          TextButton(
              onPressed: () {},
              child: Text(
                "Read More >>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                        counter: Animation2(
                          text: "+",
                          value: 10,
                        ),
                        label: 'Web Projects'),
                    // Highlights(
                    //     counter: Animation2(
                    //       text: "+",
                    //       value: 77,
                    //     ),
                    //     label: 'Clients'),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlights(
                        counter: Animation2(
                          text: "+",
                          value: 10,
                        ),
                        label: 'Andriod Applications'),
                    Highlights(
                        counter: Animation2(
                          text: "+",
                          value: 10,
                        ),
                        label: 'Github Projects'),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlights(
                    counter: Animation2(
                      text: "+",
                      value: 10,
                    ),
                    label: 'Web Projects'),
                // Highlights(
                //     counter: Animation2(
                //       text: "+",
                //       value: 10,
                //     ),
                //     label: 'Clients'),
                Highlights(
                    counter: Animation2(
                      text: "+",
                      value: 10,
                    ),
                    label: 'Andriod Applications'),
                Highlights(
                    counter: Animation2(
                      text: "+",
                      value: 10,
                    ),
                    label: 'Github Projects'),
              ],
            ),
    );
  }
}

class Highlights extends StatelessWidget {
  final Widget counter;
  final String label;
  const Highlights({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}

class Animation2 extends StatelessWidget {
  final String text;
  final int value;

  const Animation2({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}

class Homebanner extends StatelessWidget {
  const Homebanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/69.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.65),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("IF YOU CAN DREAM IT, I CAN MAKE IT.",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                if (Responsive.isMobileLarge(context))
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                Mybuildanimatedtext(),
                SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: Text(
                      'Explore Now',
                      style: TextStyle(color: darkColor),
                    ),
                  )
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
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) Fluttercodetext(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text(' I build '),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) Fluttercodetext(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText(
        'responsive web and mobile appiaction',
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        'Instagram Application',
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        'Chat application for both IOS and android with different Theme',
        speed: Duration(milliseconds: 60),
      ),
      TyperAnimatedText(
        'Welcome page ,Login page and Signup page - UI and functionality',
        speed: Duration(milliseconds: 60),
      ),
      // TyperAnimatedText(
      //   '',
      //   speed: Duration(milliseconds: 60),
      // )
    ]);
  }
}

class Fluttercodetext extends StatelessWidget {
  const Fluttercodetext({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: 'Flutter', style: TextStyle(color: primaryColor)),
      TextSpan(
        text: '>',
      )
    ]));
  }
}
