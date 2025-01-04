import 'package:dys_app/core/exports/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: AppDimentions.screenHight * 20 / 812,
            ),
            SvgPicture.asset(AppAssets.signUpSvg),
            SizedBox(
              height: AppDimentions.screenHight * 24 / 812,
            ),
            const Text(
              "Start your Journy with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: AppDimentions.screenHight * 32 / 812,
            ),
          ],
        ),
      ),
    );
  }
}
