import 'package:dys_app/core/utils/app_dimentions.dart';
import 'package:dys_app/features/splash/presentation/manager/splash_cubit/splash_cubit.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool showSplashContent = false;
    return SizedBox(
      height: AppDimentions.screenHight,
      width: AppDimentions.screenWidth,
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashContentDisplayed) {
            showSplashContent = true;
          }
        },
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                bottom: state is BallAnimated ? state.bottomValue : 500,
                duration: const Duration(milliseconds: 600),
                child: Column(
                  children: [
                    Ball(
                      offset: Offset(0, state.ballY),
                      scale: state.times == 3 ? 5 : 1,
                      height: state.height,
                      width: state.width,
                    ),
                    if (state.showShadow) BallShadow(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
