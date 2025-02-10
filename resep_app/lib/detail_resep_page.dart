import 'package:flutter/material.dart';

class DetailResepPage extends StatelessWidget {
  final String resepName;

  // Constructor untuk menerima nama resep yang dipilih
  const DetailResepPage({super.key, required this.resepName});

  @override
  Widget build(BuildContext context) {
    // Data contoh resep, Anda bisa menggantinya dengan data yang lebih dinamis atau dari API
    final Map<String, dynamic> resepDetail = _getResepDetail(resepName);

    return Scaffold(
      appBar: AppBar(
        title: Text(resepName),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Deskripsi Resep
              const Text(
                'Deskripsi Resep:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                resepDetail['description'], // Deskripsi resep
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),

              // Bahan-bahan
              const Text(
                'Bahan-bahan:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  resepDetail['ingredients'].length,
                  (index) => Text(
                    '• ${resepDetail['ingredients'][index]}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Cara Membuat
              const Text(
                'Cara Membuat:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  resepDetail['steps'].length,
                  (index) => Text(
                    '${index + 1}. ${resepDetail['steps'][index]}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk mendapatkan detail resep
  Map<String, dynamic> _getResepDetail(String resepName) {
    // Data contoh resep
    // Anda bisa menggantinya dengan data yang dinamis dari API atau database
    if (resepName == 'Nasi Goreng Spesial') {
      return {
        'description': 'Nasi goreng spesial dengan berbagai bahan pelengkap.',
        'ingredients': [
          '2 piring nasi putih',
          '1 butir telur',
          '100 gram ayam suwir',
          '50 gram udang kupas',
          '1 batang daun bawang',
          '2 siung bawang putih, cincang',
          '2 sdm kecap manis',
          'Minyak goreng secukupnya',
        ],
        'steps': [
          '1. Tumis bawang putih hingga harum.',
          '2. Masukkan ayam suwir dan udang, masak hingga matang.',
          '3. Masukkan nasi putih dan aduk rata.',
          '4. Tambahkan kecap manis dan aduk hingga merata.',
          '5. Goreng telur orak-arik, lalu campurkan ke dalam nasi.',
          '6. Sajikan dengan taburan daun bawang.',
        ],
      };
    } else if (resepName == 'Ayam Bakar Taliwang') {
      return {
        'description': 'Ayam bakar khas Lombok dengan bumbu pedas dan gurih.',
        'ingredients': [
          '1 ekor ayam, potong menjadi 4 bagian',
          '3 siung bawang putih',
          '2 buah cabai merah',
          '1 sdt terasi',
          '1 sdm gula merah',
          '1 sdm kecap manis',
          '1 sdm air jeruk nipis',
          'Minyak goreng secukupnya',
        ],
        'steps': [
          '1. Haluskan bawang putih, cabai merah, terasi, dan gula merah.',
          '2. Campurkan bumbu halus dengan kecap manis dan air jeruk nipis.',
          '3. Lumuri ayam dengan bumbu tersebut dan diamkan selama 30 menit.',
          '4. Panggang ayam di atas bara api hingga matang dan berwarna kecokelatan.',
          '5. Sajikan ayam bakar dengan sambal dan nasi putih.',
        ],
      };
    } else if (resepName == 'Sate Ayam Madura') {
      return {
        'description': 'Sate Ayam Madura adalah sate ayam yang dibakar dan disajikan dengan bumbu kacang yang gurih dan pedas.',
        'ingredients': [
          '500 gram daging ayam (bagian dada atau paha), potong dadu kecil',
          '2 sendok makan kecap manis',
          '1 sendok teh air jeruk nipis',
          '1 sendok teh minyak goreng (untuk mengoles sate)',
          '2 sendok makan minyak goreng (untuk menumis)',
          '1 batang serai (memarkan)',
          '2 lembar daun jeruk',
          '2 lembar daun salam',
          '1 sendok teh garam',
          '1 sendok teh gula merah serut',
          '200 ml air',
        ],
        'steps': [
          '1. Haluskan bumbu marinasi ayam, yaitu bawang putih, bawang merah, kemiri, ketumbar, merica, dan kunyit bubuk. Campurkan dengan kecap manis dan air jeruk nipis.',
          '2. Masukkan potongan ayam ke dalam bumbu marinasi dan diamkan selama minimal 30 menit.',
          '3. Sangrai kacang tanah hingga kecokelatan, kemudian haluskan menggunakan cobek atau blender.',
          '4. Haluskan juga bawang putih, cabai merah, dan gula merah.',
          '5. Dalam wajan, panaskan minyak goreng, tumis bumbu halus bersama serai, daun jeruk, dan daun salam hingga harum. Tambahkan air dan biarkan mendidih.',
          '6. Campurkan kacang tanah yang telah dihaluskan, gula merah, kecap manis, dan air asam jawa ke dalam wajan. Aduk rata dan masak hingga bumbu kacang mengental.',
          '7. Tusukkan potongan ayam yang telah dimarinasi pada tusuk sate.',
          '8. Panggang sate di atas bara api atau grill pan yang telah dipanaskan. Oleskan dengan sedikit minyak goreng saat memanggang agar sate tidak kering.',
          '9. Sajikan sate ayam Madura dengan bumbu kacang yang telah disiapkan di atasnya atau di sampingnya.',
        ],
      };
    } else if (resepName == 'Gulai Kambing') {
      return {
        'description': 'Gulai Kambing adalah hidangan daging kambing dengan kuah santan yang kaya rempah.',
        'ingredients': [
          '500 gram daging kambing, potong-potong',
          '200 ml santan kental',
          '2 batang serai, memarkan',
          '3 lembar daun jeruk',
          '2 lembar daun salam',
          '1 sdt kunyit bubuk',
          '1 sdt ketumbar bubuk',
          '3 siung bawang putih',
          '3 butir bawang merah',
          '2 buah cabai merah',
          '1 sdt garam',
          '1 sdt gula pasir',
          '500 ml air',
          'Minyak goreng secukupnya',
        ],
        'steps': [
          '1. Haluskan bawang putih, bawang merah, cabai merah, kunyit, dan ketumbar.',
          '2. Tumis bumbu halus dengan serai, daun jeruk, dan daun salam hingga harum.',
          '3. Masukkan potongan daging kambing, aduk rata.',
          '4. Tambahkan air, garam, dan gula. Masak hingga daging kambing empuk.',
          '5. Setelah daging matang, tuangkan santan dan masak dengan api kecil sampai kuah mengental.',
          '6. Sajikan gulai kambing hangat dengan nasi putih.',
        ],
      };
    } else if (resepName == 'Soto Betawi') {
      return {
        'description': 'Soto Betawi adalah soto khas Jakarta yang berkuah santan, dengan daging sapi atau ayam.',
        'ingredients': [
          '500 gram daging sapi, potong dadu',
          '200 ml santan kelapa',
          '2 batang serai, memarkan',
          '2 lembar daun salam',
          '1 sdt merica bubuk',
          '4 siung bawang putih, haluskan',
          '3 butir bawang merah, haluskan',
          '2 cm jahe, haluskan',
          '2 cm lengkuas, memarkan',
          'Minyak goreng secukupnya',
          '500 ml air',
          'Garam dan gula secukupnya',
        ],
        'steps': [
          '1. Rebus daging sapi dengan air hingga empuk.',
          '2. Tumis bawang putih, bawang merah, jahe, dan lengkuas sampai harum.',
          '3. Masukkan bumbu tumis ke dalam air rebusan daging sapi, tambahkan serai dan daun salam.',
          '4. Setelah mendidih, tambahkan santan dan aduk rata.',
          '5. Masak dengan api kecil hingga kuah soto kental dan matang.',
          '6. Sajikan soto Betawi dengan nasi putih dan pelengkap seperti emping, tomat, dan kerupuk.',
        ],
      };
    } else if (resepName == 'Rendang Padang') {
      return {
        'description': 'Rendang Padang adalah hidangan daging sapi khas Sumatra dengan bumbu rempah yang kuat.',
        'ingredients': [
          '500 gram daging sapi, potong dadu',
          '200 ml santan kental',
          '2 batang serai, memarkan',
          '3 lembar daun jeruk',
          '3 lembar daun salam',
          '1 sdt kunyit bubuk',
          '1 sdt ketumbar bubuk',
          '4 siung bawang putih, haluskan',
          '3 butir bawang merah, haluskan',
          '2 buah cabai merah',
          '1 sdt garam',
          '1 sdt gula pasir',
          '500 ml air',
        ],
        'steps': [
          '1. Tumis bawang putih dan bawang merah hingga harum.',
          '2. Masukkan serai, daun jeruk, dan daun salam. Aduk rata.',
          '3. Tambahkan cabai merah, ketumbar, dan kunyit bubuk.',
          '4. Masukkan potongan daging sapi dan aduk hingga rata.',
          '5. Tambahkan air, garam, dan gula. Masak hingga daging empuk.',
          '6. Setelah daging empuk, tuangkan santan dan masak hingga bumbu meresap.',
          '7. Sajikan rendang padang dengan nasi putih.',
        ],
      };
    } else {
      return {
        'description': 'Resep tidak ditemukan.',
        'ingredients': [],
        'steps': [],
      };
    }
  }
}
