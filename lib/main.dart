import 'package:dys_app/core/exports/exports.dart';
import 'package:dys_app/core/utils/singleton_instance.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    SingletonInstance.init(),
  ]);
  runApp(const SanadApp());
}

class SanadApp extends StatelessWidget {
  const SanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        AppDimentions.initScreenDimensions(context);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: SplashView.route,
          routes: {
            SplashView.route: (BuildContext context) => const SplashView(),
            OnboardingView.route: (BuildContext context) =>
                const OnboardingView()
          },
        );
      },
    );
  }
}
