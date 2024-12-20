import 'package:flutter/material.dart' hide TimePickerDialog;
import 'package:sanad_app/core/colors/app_colors.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_button.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_text_field.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_time_picker_dialog.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/date_list_tile.dart';

class AddReminderViewBody extends StatelessWidget {
  const AddReminderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          ),
          TimePickerDialog(
            initialTime: TimeOfDay.now(),
          ),
          CustomButton()
        ],
      ),
    );
  }
}
