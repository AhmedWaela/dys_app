// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BallShadow extends StatelessWidget {
  const BallShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
