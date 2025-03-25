import 'package:flutter/material.dart';
import 'secure_login.dart';
import 'home_page.dart';
import 'connect_device.dart';
import 'daily_checkin.dart';
import 'stress_overview.dart';
import 'query_data.dart'; 
import 'save_data.dart';

void main() {
  runApp(const StressMonitorApp());
}

class StressMonitorApp extends StatelessWidget {
  const StressMonitorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stress Monitor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecureLoginScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/connect-device': (context) => ConnectDeviceScreen(),
        '/daily-checkin': (context) => DailyCheckInScreen(),
        '/stress-overview': (context) => StressOverviewScreen(),
        '/secure-login': (context) => SecureLoginScreen(),
        '/query-heart-rate': (context) => QueryData(), 
        '/save-heart-rate': (context) => SaveData(),
      },
    );
  }
}
