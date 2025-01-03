import 'package:dys_app/core/exports/exports.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
          },
        );
      },
    );
  }
}
