import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FlutterLocalNotificationsService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static Future<void> initialize() async {
    InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: DarwinInitializationSettings(),
    );

    try {
      bool? initializationResult =
          await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveBackgroundNotificationResponse:
            onDidReceiveBackgroundNotificationResponse,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
      );
      debugPrint('Result $initializationResult');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  static void onDidReceiveBackgroundNotificationResponse(details) {}

  static void onDidReceiveNotificationResponse(details) {}

  static Future<void> showBasicNotification(
    int id,
    String title,
    String description,
    int progress,
    bool finished,
  ) async {
    NotificationDetails notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'Basic Notification Channel Id',
        'Basic Notification Channel Name',
        priority: finished ? Priority.high : Priority.low,
        importance: finished ? Importance.high : Importance.low,
        sound: finished
            ? RawResourceAndroidNotificationSound('basic_notification')
            : null,
        subText: 'Be ready for task',
        maxProgress: 100,
        showProgress: true,
        progress: progress,
        indeterminate: false,
        actions: [
          AndroidNotificationAction(
            'id',
            'Clear',
            cancelNotification: true,
          ),
        ],
      ),
      iOS: DarwinNotificationDetails(
        presentSound: finished, // تشغيل الصوت فقط عند الاكتمال
      ),
    );

    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      description,
      notificationDetails,
    );
  }

  static Future<void> cancelNotification(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }
}
