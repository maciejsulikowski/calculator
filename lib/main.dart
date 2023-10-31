import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  const Calculator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Circles(),
            SizedBox(height: 10),
            Circles(),
            SizedBox(height: 10),
            Circles(),
            SizedBox(height: 10),
            Circles(),
            SizedBox(height: 10),
            Circles(),
          ],
        ),
      ),
    );
  }
}

class Circles extends StatelessWidget {
  const Circles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 40,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 40,
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 40,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
