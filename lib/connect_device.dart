import 'package:flutter/material.dart';

class ConnectDeviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect Device'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Follow these steps to pair your device and start tracking your stress data.'),
            SizedBox(height: 20),
            ListTile(
              title: Text('Apple Watch'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Pair'),
              ),
            ),
            ListTile(
              title: Text('Device XYZ'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Pair'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
