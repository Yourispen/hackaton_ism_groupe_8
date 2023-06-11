import 'package:flutter/material.dart';
import 'package:netflix_mobile/configs/config.dart';

class Bg extends StatelessWidget {
  const Bg({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        /* Image.asset(
          Config.assets.background,
          fit: BoxFit.fill,
        ), */
        Container(
          color: Colors.black,
        ),
        SafeArea(
          child: child,
        ),
      ],
    );
  }
}
