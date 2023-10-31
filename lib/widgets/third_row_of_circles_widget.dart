import 'package:flutter/material.dart';

class ThirdRowOfCircles extends StatelessWidget {
  const ThirdRowOfCircles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Circle(title: '4'),
        SizedBox(
          width: 10,
        ),
        Circle(title: '5'),
        SizedBox(
          width: 10,
        ),
        Circle(
          title: '6',
        ),
        SizedBox(
          width: 10,
        ),
        GreyCircle(title: '-'),
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
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.grey[400],
        radius: 40,
        child: Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}

class GreyCircle extends StatelessWidget {
  const GreyCircle({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.grey[600],
        radius: 40,
        child: Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
