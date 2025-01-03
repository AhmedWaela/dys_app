import 'dart:async';

import 'package:dys_app/core/utils/app_dimentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  late AnimationController animationController;

  double ballY = 0;
  double width = 50;
  double height = 50;
  double bottomValue = 500;
  bool add = false;
  bool showShadow = false;
  int times = 0;
  bool showSplashContent = false;

  void initState() {
    animationController = AnimationController(
      vsync: const CustomTickerProvider(),
      duration: const Duration(seconds: 1),
    )..addListener(
        () {
          if (add) {
            ballY += 15;
          } else {
            ballY -= 15;
          }
          if (ballY <= -200) {
            times += 1;
            add = true;
            showShadow = true;
          }
          if (ballY >= 0) {
            add = false;
            showShadow = false;
            width += 50;
            height += 50;
            bottomValue -= 200;
          }
          if (times == 3) {
            showShadow = false;
            width = AppDimentions.screenWidth;
            height = AppDimentions.screenHight;
            Timer(const Duration(milliseconds: 300), () {
              showSplashContent = true;
              emit(SplashContentDisplayed());
            });
            animationController.stop();
          }
          emit(BallAnimated());
        },
      );
    animationController.repeat();
  }
}

class CustomTickerProvider extends TickerProvider {
  const CustomTickerProvider();
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
