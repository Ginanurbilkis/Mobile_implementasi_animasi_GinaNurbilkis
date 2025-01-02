import 'package:flutter/material.dart';
import 'package:kartun_app/screen/mainPage.dart';
import 'package:kartun_app/screen/profile.dart'; // Pastikan ProfilePage diimpor dengan benar

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Film App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(), // Langsung ke MainPage
      routes: {
        '/upload': (context) => UploadPage(), // Jika ada halaman upload
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
