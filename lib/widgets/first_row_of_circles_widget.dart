import 'package:flutter/material.dart';

class FirstRowOfCircles extends StatelessWidget {
  const FirstRowOfCircles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Circle(title: 'C'),
        SizedBox(
          width: 10,
        ),
        Circle(title: '%'),
        SizedBox(
          width: 10,
        ),
        CircleIcon(),
        SizedBox(
          width: 10,
        ),
        Circle(title: '÷'),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[600],
      radius: 40,
      child: Text(
        title,
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[600],
      radius: 40,
      child: CircleAvatar(
        backgroundColor: Colors.grey[600],
        radius: 20,
        child: Image.asset(
          'images/back_icon.png',
        ),
      ),
    );
  }
}
