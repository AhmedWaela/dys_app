import 'package:device_preview/device_preview.dart';
import 'package:dys_app/core/constants/app_colors.dart';
import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    Firebase.initializeApp(),
    SingletonInstance.init(),
  ]);
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const SanadApp(),
    ),
  );
}

class SanadApp extends StatelessWidget {
  const SanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        AppDimentions.initScreenDimensions(context);
        return GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.kScaffoldBackgroundColor,
          ),
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          initialRoute: SplashView.route,
          routes: {
            SplashView.route: (BuildContext context) => const SplashView(),
            OnboardingView.route: (BuildContext context) =>
                const OnboardingView(),
            SignUpView.route: (BuildContext context) => const SignUpView()
          },
        );
      },
    );
  }
}
