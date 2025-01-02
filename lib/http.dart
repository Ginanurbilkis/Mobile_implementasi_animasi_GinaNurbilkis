// lib/http.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpService {
  // Fungsi untuk melakukan login
  Future<Map<String, dynamic>> login(String username, String password) async {
    final url = Uri.parse('http://your-api-url.com/login'); // Ganti dengan URL API yang sesuai
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'username': username,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        return json.decode(response.body); // Mengembalikan data response
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
