import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/styles/app_styles.dart';

class DateListTile extends StatelessWidget {
  const DateListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Enter Date',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0XFF4CB050),
        ),
      ),
      subtitle: Text(
        'yy/mm/dd',
        style: AppStyles.textStyle12W400Grey,
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(bottom: 8.5, top: 15.5),
        child: SvgPicture.asset(
          AppAssets.dateSvgPath,
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}
