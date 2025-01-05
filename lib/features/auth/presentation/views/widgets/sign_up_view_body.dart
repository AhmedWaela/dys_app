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
        color: AppColors.kSoftWhite,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBlackOverlay,
            blurRadius: 5.2,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kNeutralGray,
          ),
          hintText: "Email",
          prefixIcon: PrefeixIcon(),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }
}

class PrefeixIcon extends StatelessWidget {
  const PrefeixIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 12,
        bottom: 12,
      ),
      child: SvgPicture.asset(
        AppAssets.emailSvg,
        colorFilter: ColorFilter.mode(
          AppColors.kGrayishCharcoal,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
