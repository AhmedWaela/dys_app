import 'package:dys_app/core/utils/app_dimentions.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball_shadow.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimentions.screenHight,
      width: AppDimentions.screenWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            bottom: 500,
            duration: const Duration(milliseconds: 600),
            child: Column(
              children: [
                Ball(),
                if (true) BallShadow(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
