import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sat5317_lab3/connect_device.dart';
import 'package:sat5317_lab3/daily_checkin.dart';
import 'package:sat5317_lab3/home_page.dart';
import 'package:sat5317_lab3/stress_overview.dart';

void main() {
  testWidgets('HomePage displays buttons and navigates to screens', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: HomePage(),
      routes: {
        '/daily-checkin': (context) => DailyCheckInScreen(),
        '/connect-device': (context) => ConnectDeviceScreen(),
        '/stress-overview': (context) => StressOverviewScreen(),
      },
    ));

    expect(find.text('Start Daily Check-in'), findsOneWidget);
    expect(find.text('Connect Device'), findsOneWidget);
    expect(find.text('Stress Overview'), findsOneWidget);
    expect(find.text('Log Out'), findsOneWidget);

    await tester.tap(find.text('Start Daily Check-in'));
    await tester.pumpAndSettle();

    expect(find.byType(DailyCheckInScreen), findsOneWidget);
  });
}
