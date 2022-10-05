import 'package:flutter/material.dart';
import 'package:portfolio/screens/constant.dart';
import 'package:portfolio/widgets/responsive.dart';

import '../widgets/side_menu.dart';

class Mainscreen extends StatelessWidget {
  final List<Widget> childrenl;
  const Mainscreen({Key? key, required this.childrenl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu));
                    
              }),
            ),
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
            SizedBox(
              width: defaultPadding / 2,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [...childrenl],
                ),
              ),
              flex: 6,
            )
          ],
        ),
      ),
    );
  }
}
