import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle titleTextStyle = GoogleFonts.montserrat();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Christin's Flutter",
          style: TextStyle(fontSize: 25, fontFamily: 'Times New Roman'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/latar.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/foto.jpg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                child: Text(
                  'Christin Rachell Jocom',
                  style: titleTextStyle.copyWith(
                    letterSpacing: 2,
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                child: Text(
                  'NIM 220211060033',
                  style: titleTextStyle.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromRGBO(0, 0, 0, 0.6),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nCras vulputate eros ut nisi facilisis convallis.\nMauris facilisis nec felis a maximus. Nam eu nisl odio.\nMaecenas fringilla tellus sit amet nisi vestibulum.',
                  textAlign: TextAlign.center,
                  style: titleTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
