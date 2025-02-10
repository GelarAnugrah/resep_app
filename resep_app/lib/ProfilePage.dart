import 'package:flutter/material.dart';
import 'login_page.dart'; // Pastikan halaman login sudah ada

class ProfilePage extends StatelessWidget {
  final String userName;
  final String userEmail;

  // Constructor untuk menerima data pengguna
  const ProfilePage({super.key, required this.userName, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Navigasi ke halaman login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan informasi pengguna
            Text(
              'Nama: $userName',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: $userEmail',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),

            // Tombol Logout
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logout dan kembali ke halaman login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent, // Warna tombol
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
