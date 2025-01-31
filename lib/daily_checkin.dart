import 'package:flutter/material.dart';

class DailyCheckInScreen extends StatelessWidget {
  const DailyCheckInScreen({super.key}); // Add Key parameter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Check-In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Stress Level')),
            ElevatedButton(onPressed: () {}, child: Text('Mood Rating')),
            ElevatedButton(onPressed: () {}, child: Text('Sleep Quality')),
            ElevatedButton(onPressed: () {}, child: Text('Activity Level')),
          ],
        ),
      ),
    );
  }
}
