import 'package:flutter/material.dart';
import 'detail_resep_page.dart'; // Halaman detail resep

class HomePage extends StatelessWidget {
  // Daftar resep dan ikon yang sesuai
  final List<Map<String, dynamic>> resepList = [
    {'name': 'Nasi Goreng Spesial', 'icon': Icons.rice_bowl},
    {'name': 'Ayam Bakar Taliwang', 'icon': Icons.food_bank_sharp},
    {'name': 'Sate Ayam Madura', 'icon': Icons.restaurant_menu_outlined},
    {'name': 'Gulai Kambing', 'icon': Icons.food_bank},
    {'name': 'Soto Betawi', 'icon': Icons.restaurant},
    {'name': 'Rendang Padang', 'icon': Icons.local_dining},
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resep Buku'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Menampilkan Grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Menampilkan 2 kolom
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: resepList.length, // Jumlah item yang ditampilkan
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman detail resep
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailResepPage(
                            resepName: resepList[index]['name']!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Ikon makanan untuk masing-masing resep
                          Icon(
                            resepList[index]['icon'],
                            size: 60,
                            color: Colors.blueAccent,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            resepList[index]['name']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
