import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Buku',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(backgroundImagePath: 'assets/images/nasi.jpg'), // Modify this line
    );
  }
}


// Data login yang valid (simulasi data pengguna)
  const String validEmail = "user@example.com";
  const String validPassword = "password123";
