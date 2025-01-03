import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  const Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, 50),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xff4CB050),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
