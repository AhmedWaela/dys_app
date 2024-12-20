import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sanad_app/core/assets/app_assets.dart';
import 'package:sanad_app/core/styles/app_styles.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_text_field.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/date_list_tile.dart';

class AddReminderViewBody extends StatelessWidget {
  const AddReminderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: TextEditingController(),
          label: 'Title',
        ),
        CustomTextField(
          isDescriptionField: true,
          controller: TextEditingController(),
          label: 'Description',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: DateListTile(),
        )
      ],
    );
  }
}
