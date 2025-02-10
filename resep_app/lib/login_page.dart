// ignore_for_file: duplicate_import

import 'package:flutter/material.dart';
import 'package:resep_app/halaman.dart';
import 'halaman.dart'; // Ganti dengan halaman utama Anda

class LoginPage extends StatefulWidget {
  final String backgroundImagePath; // Add this line

  const LoginPage({super.key, this.backgroundImagePath = 'assets/images/nasi.jpg'}); // Modify this line

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // FormKey untuk validasi

  // Fungsi untuk login
  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      // Proses login sukses, pindah ke halaman utama (HomePage)
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login berhasil!')),
      );
      
      // Misalnya pindah ke halaman utama setelah login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );

      // Data login yang valid (simulasi data pengguna)
      const String validEmail = "user@example.com";
    const String validPassword = "password123";

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login - Resep Buku'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.backgroundImagePath), // Modify this line
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey, // Gunakan FormKey untuk validasi
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Judul
                  const Text(
                    'Login ke Resep Buku',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Input Email
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Masukkan email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Harap masukkan email';
                      }
                      // Validasi format email
                      if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
                        return 'Format email tidak valid';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Input Password
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true, // Untuk sembunyikan password
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Masukkan password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Harap masukkan password';
                      }
                      if (value.length < 6) {
                        return 'Password harus lebih dari 6 karakter';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Tombol Login
                  ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text('Login'),
                  ),
                  const SizedBox(height: 15),

                  // Tombol untuk menuju ke halaman Register
                  TextButton(
                    onPressed: () {
                      // Arahkan ke halaman Register jika belum punya akun
                      // Bisa buat halaman RegisterPage di aplikasi Anda
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: const Text('Belum punya akun? Daftar sekarang'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
