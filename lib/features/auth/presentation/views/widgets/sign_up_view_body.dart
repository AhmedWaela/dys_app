import 'package:dys_app/core/exports/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
              AuthTextFormField()
            ],
          ),
        ),
      ),
    );
  }
}

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xffF9FFFA),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: const Color(0x29000000),
            blurRadius: 5.2,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SvgPicture.asset(
                "assets/images/email.svg",
                width: 24,
                height: 10,
                colorFilter:
                    ColorFilter.mode(Color(0xff6D6D6D), BlendMode.srcIn),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
