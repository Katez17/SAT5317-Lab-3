import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/daily-checkin');
              },
              child: Text('Start Daily Check-in'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/connect-device');
              },
              child: Text('Connect Device'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stress-overview');
              },
              child: Text('Stress Overview'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secure-login');
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
