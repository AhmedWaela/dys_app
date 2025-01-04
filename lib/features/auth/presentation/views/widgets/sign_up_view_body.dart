import 'package:dys_app/core/exports/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SvgPicture.asset(AppAssets.signUpSvg)
        ],
      ),
    );
  }
}