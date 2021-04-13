import 'package:flutter/material.dart';
import 'package:mynewflutt/Clipper.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1 / 1,
          child: ClipPath(
            clipper: Clipper(),
            child: Container(
              color: Colors.yellow[500],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: RotatedBox(
              quarterTurns: 3,
              child: Image.asset(
                "purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png",
              ),
            ),
          ),
        ),
        Positioned(
          left: 15,
          bottom: 15,
          child: Text(
            "Super Mario",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
