import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Add Key parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade50, // Light blue background for the whole page
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Home Page Text
              const Text(
                'Home Page',
                style: TextStyle(
                  color: Colors.blue, // Blue text
                  fontWeight: FontWeight.bold, // Bold text
                  fontSize: 32, // Larger font size
                ),
              ),
              const SizedBox(height: 40), // Spacing below the title

              // Start Daily Check-in Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue button background
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/daily-checkin');
                },
                child: const Text(
                  'Start Daily Check-in',
                  style: TextStyle(
                    color: Colors.white, // White text for contrast
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
              ),
              const SizedBox(height: 15), // Spacing between buttons

              // Connect Device Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue button background
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/connect-device');
                },
                child: const Text(
                  'Connect Device',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Stress Overview Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue button background
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/stress-overview');
                },
                child: const Text(
                  'Stress Overview',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // Log Out Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue button background
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/secure-login');
                },
                child: const Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
