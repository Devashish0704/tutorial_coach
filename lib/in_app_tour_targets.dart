import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

List<TargetFocus> addSiteTargetsPage({
  required GlobalKey appBarKey,
  required GlobalKey containerKey,
  required GlobalKey textKey,
  required GlobalKey fabKey,
}) {
  List<TargetFocus> targets = [];

  targets.add(
    TargetFocus(
      //identify: "hwllo",
      keyTarget: appBarKey,
      alignSkip: Alignment.bottomCenter,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.centerRight,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is the app bar",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
            );
          },
        )
      ],
    ),
  );

  targets.add(
    TargetFocus(
      keyTarget: containerKey,
      alignSkip: Alignment.bottomLeft,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is the container that contains the text and counter",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
            );
          },
        )
      ],
    ),
  );

  targets.add(
    TargetFocus(
      keyTarget: textKey,
      alignSkip: Alignment.bottomCenter,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is the counter ehich shows you the text",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
            );
          },
        )
      ],
    ),
  );

  targets.add(
    TargetFocus(
      keyTarget: fabKey,
      alignSkip: Alignment.bottomCenter,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This is the floating acition button",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
            );
          },
        )
      ],
    ),
  );
  print(targets.toString());
  return targets;
}

final appBarKey = GlobalKey();
final containerKey = GlobalKey();
final textKey = GlobalKey();
final fabKey = GlobalKey();
