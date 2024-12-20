import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_text_field.dart';

class AddReminderViewBody extends StatelessWidget {
  const AddReminderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(),
        CustomTextField(),
      ],
    );
  }
}
