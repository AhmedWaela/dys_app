import 'package:flutter/material.dart';
import 'package:sanad_app/core/colors/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 76, right: 16, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.primaryColor,
      ),
      height: 48,
      child: Center(
        child: Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0XFFFDFDFD),
          ),
        ),
      ),
    );
  }
}
