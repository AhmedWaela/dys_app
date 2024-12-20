import 'package:flutter/material.dart';
import 'package:sanad_app/features/tasks/presentation/views/widgets/custom_app_bar.dart';

class ReminderView extends StatelessWidget {
  const ReminderView({super.key});
  static const String route = '/reminderview';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Reminder',
      ),
    );
  }
}
