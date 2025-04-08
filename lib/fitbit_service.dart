// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'package:http/http.dart' as http;

class FitbitService {
  static const String refreshUrl = 'https://3x3yoj7fab.execute-api.us-east-2.amazonaws.com/test/fitbitRefresh';

  static Future<void> refreshFitbitToken() async {
    try {
      final response = await http.get(Uri.parse(refreshUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // This message is handled in HomePage now via SnackBar
      } else {
        throw Exception("Failed with ${response.statusCode}: ${response.body}");
      }
    } catch (e) {
      throw Exception("Error during Fitbit token refresh: $e");
    }
  }
}

