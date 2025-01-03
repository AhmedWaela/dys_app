import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  const Ball(
      {super.key,
      required this.scale,
      required this.offset,
      required this.height,
      required this.width});
  final double scale;
  final Offset offset;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 200),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: Color(0xff4CB050),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
