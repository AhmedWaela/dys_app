import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/colors/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.isDescriptionField = false,
      required this.label});
  final TextEditingController controller;
  final bool isDescriptionField;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 2, right: 16, left: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color(0XFFF9FFFA),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF4CB050),
                ),
              ),
              if (isDescriptionField)
                SizedBox(
                  width: 4,
                ),
              if (isDescriptionField)
                Text(
                  '(optional)',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: SvgPicture.asset(AppAssets.keyboardSvgPath),
              )
            ],
          ),
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(fontSize: 14),
              cursorHeight: 18,
              cursorColor: Color(0XFF4CB050),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.grey1,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey1)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grey1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
