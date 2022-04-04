import 'package:flutter/material.dart';
import 'package:equal/context_extension.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: context.dynamicHeight(0.1),
          horizontal: context.dynamicWidth(0)),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Colors.black),
        ),
        Container(
          child: Icon(Icons.play_arrow, color: Colors.white, size: 80),
          height: context.dynamicHeight(1),
          width: context.dynamicWidth(1),
        ),
      ]),
    );
  }
}
