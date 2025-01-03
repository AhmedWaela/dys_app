import 'dart:async';
import 'package:dys_app/core/utils/app_dimentions.dart';
import 'package:dys_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dys_app/features/splash/presentation/manager/splash_cubit/splash_cubit.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/ball_shadow.dart';
import 'package:dys_app/features/splash/presentation/views/widgets/splash_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  bool showSplashContent = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimentions.screenHight,
      width: AppDimentions.screenWidth,
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.times == 3) {
            Timer(
              const Duration(milliseconds: 200),
              () {
                setState(() {
                  showSplashContent = true;
                });
              },
            );
            Future.delayed(const Duration(seconds: 3), () {
              Navigator.pushNamed(context, OnboardingView.route);
            });
          }
        },
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                bottom: state.bottomValue,
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
              if (showSplashContent) SplashContent()
            ],
          );
        },
      ),
    );
  }
}
