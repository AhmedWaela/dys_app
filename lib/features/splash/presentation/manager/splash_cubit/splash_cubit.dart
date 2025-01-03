import 'package:dys_app/core/exports/exports.dart';
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
    )..addListener(controlOnAnimation);
    animationController.repeat();
  }

  void controlOnAnimation() {
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
      animationController.stop();
    }
    emit(
      BallAnimated(
        add: add,
        ballY: ballY,
        bottomValue: bottomValue,
        height: height,
        showShadow: showShadow,
        times: times,
        width: width,
      ),
    );
  }
}
