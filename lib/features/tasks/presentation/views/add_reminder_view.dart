import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/add_reminder_view_body.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_app_bar.dart';

class AddReminderView extends StatelessWidget {
  const AddReminderView({super.key});
  static const String route = '/addreminderview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Add Reminder',
      ),
      body: AddReminderViewBody(),
    );
  }
}
