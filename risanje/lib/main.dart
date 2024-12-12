import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Rože v vrsti"),
        ),
        body: const Center(
          child: FlowerRow(),
        ),
      ),
    );
  }
}

class FlowerRow extends StatelessWidget {
  const FlowerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomCenter, // Poravnava blizu spodnjega roba
      child: Padding(
        padding: EdgeInsets.only(bottom: 10), // Razmik od spodnjega roba
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Omogoči horizontalno drsenje
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Poravna rože na sredino
            children: [
              SvgWidget('assets/roza1.svg'),
              SizedBox(width: 1), // Razmik med rožami
              SvgWidget('assets/roza2.svg'),
              SizedBox(width: 1),
              SvgWidget('assets/roza3.svg'),
              SizedBox(width: 1),
              SvgWidget('assets/roza4.svg'),
              SizedBox(width: 1),
              SvgWidget('assets/roza5.svg'),
              SizedBox(width: 1),
              SvgWidget('assets/roza6.svg'),
            ],
          ),
        ),
      ),
    );
  }
}

class SvgWidget extends StatelessWidget {
  final String assetPath;
  const SvgWidget(this.assetPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      height: 300, // Nastavljena višina za vse rože
      width: 300, // Nastavljena širina za vse rože
      fit: BoxFit.contain,
    );
  }
}
