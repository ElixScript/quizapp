// Mengimpor modul yang diperlukan
import 'package:basics/question_screen.dart';  // Mengimpor layar pertanyaan
import 'package:basics/start_screen.dart';     // Mengimpor layar awal
import 'package:flutter/material.dart';        // Mengimpor pustaka Material Design dari Flutter

// Kelas utama yang merupakan StatefulWidget untuk aplikasi kuis
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

// Kelas State untuk StatefulWidget 'Quiz'
class _QuizState extends State<Quiz> {
  // Variabel untuk menyimpan layar yang saat ini aktif
  var activeScreen = 'start-screen';
  @override

  // Fungsi untuk mengganti layar
  void switchScreen() {
    setState(() {
      // Mengubah layar aktif menjadi layar pertanyaan
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionScreen();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Menyembunyikan banner mode debug
      home: Scaffold(
        body: Container(
          // Menambahkan dekorasi latar belakang dengan gradient
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 62, 16, 142)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
          ),
          // Menampilkan layar aktif
          child: screenWidget ,
        ),
      ),
    );
  }
}