import 'package:flutter/material.dart';
import 'package:portfolio/screens/constant.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "javascript",
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    required this.percentage,
    required this.label,
    Key? key,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%")
              ],
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
                backgroundColor: darkColor, color: primaryColor, value: value),
          ],
        ),
      ),
    );
  }
}
