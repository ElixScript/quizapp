// Mengimpor pustaka Material Design dari Flutter
import 'package:flutter/material.dart';

// Kelas layar awal yang bersifat StatelessWidget
class StartScreen extends StatelessWidget {
  // Konstruktor untuk menerima fungsi callback untuk memulai kuis
  const StartScreen(this.startQuiz, {super.key});

  // Fungsi callback untuk memulai kuis
  final void Function() startQuiz;

  // Membangun tampilan UI untuk layar awal
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,  // Mengatur ukuran kolom sesuai dengan isinya
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',  // Menampilkan gambar logo kuis
            width: 300,
            color: Color.fromARGB(150, 249, 245, 245),  // Memberikan warna pada gambar
          ),
          SizedBox(height: 80,),  // Memberikan jarak vertikal
          Text(
            "Learn Flutter is easy",  // Menampilkan teks
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            ),
          ),
          SizedBox(height: 30,),  // Memberikan jarak vertikal
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),  // Menambahkan ikon pada tombol
            onPressed: startQuiz,  // Memanggil fungsi startQuiz ketika tombol ditekan
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white  // Mengatur warna teks tombol
            ),
            label: const Text('Start Quiz')  // Teks pada tombol
          )
        ],
      ),
    );
  }
}