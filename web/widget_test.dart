import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sat5317_lab3/connect_device.dart';
import 'package:sat5317_lab3/daily_checkin.dart';
import 'package:sat5317_lab3/home_page.dart';
import 'package:sat5317_lab3/stress_overview.dart';

void main() {
  // Test for StressOverviewScreen
  testWidgets('StressOverviewScreen displays stress level correctly', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: StressOverviewScreen()));

    // Verify that the text "Stress Level" is present
    expect(find.text('Stress Level'), findsOneWidget);

    // Verify the stress level '10' is displayed
    expect(find.text('10'), findsOneWidget);

    // Verify that the CircleAvatar is present
    expect(find.byType(CircleAvatar), findsOneWidget);
  });

  // Test for HomePage
  testWidgets('HomePage displays buttons and navigates to screens', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Verify the presence of buttons
    expect(find.text('Start Daily Check-in'), findsOneWidget);
    expect(find.text('Connect Device'), findsOneWidget);
    expect(find.text('Stress Overview'), findsOneWidget);
    expect(find.text('Log Out'), findsOneWidget);

    // Simulate tapping on the 'Start Daily Check-in' button
    await tester.tap(find.text('Start Daily Check-in'));
    await tester.pumpAndSettle();

    // Verify navigation to DailyCheckInScreen
    expect(find.byType(DailyCheckInScreen), findsOneWidget);
  });

  // Test for ConnectDeviceScreen
  testWidgets('ConnectDeviceScreen displays device pairing options', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: ConnectDeviceScreen()));

    // Verify the text instructions are present
    expect(find.text('Follow these steps to pair your device and start tracking your stress data.'), findsOneWidget);

    // Verify device pairing options are displayed
    expect(find.text('Apple Watch'), findsOneWidget);
    expect(find.text('Device XYZ'), findsOneWidget);
    expect(find.text('Pair'), findsNWidgets(2)); // Two "Pair" buttons
  });

  // Test for DailyCheckInScreen
  testWidgets('DailyCheckInScreen displays daily check-in options', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(home: DailyCheckInScreen()));

    // Verify all check-in options are displayed
    expect(find.text('Stress Level'), findsOneWidget);
    expect(find.text('Mood Rating'), findsOneWidget);
    expect(find.text('Sleep Quality'), findsOneWidget);
    expect(find.text('Activity Level'), findsOneWidget);
  });
}
