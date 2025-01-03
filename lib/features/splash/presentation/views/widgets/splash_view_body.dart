// ignore_for_file: use_build_context_synchronously

import 'package:dys_app/core/exports/exports.dart';

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
            Future.delayed(
              const Duration(seconds: 3),
              () {
                Navigator.pushNamed(context, OnboardingView.route);
              },
            );
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
