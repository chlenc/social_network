import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  Avatar({this.img, this.size = 48, this.margin, this.boxShadow});

  final Image img;
  final double size;
  final EdgeInsetsGeometry margin;
  final List<BoxShadow> boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: Colors.white,
        boxShadow: boxShadow,
      ),
      child: img,
    );
  }
}
