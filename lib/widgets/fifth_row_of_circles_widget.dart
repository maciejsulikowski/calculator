import 'package:flutter/material.dart';

class FifthRowOfCircles extends StatelessWidget {
  const FifthRowOfCircles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Circle(title: '00'),
        SizedBox(
          width: 10,
        ),
        Circle(title: '0'),
        SizedBox(
          width: 10,
        ),
        Circle(
          title: ',',
        ),
        SizedBox(
          width: 10,
        ),
        CircleEqual(
          title: '=',
        ),
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

class CircleEqual extends StatelessWidget {
  const CircleEqual({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: Colors.orange[400],
        radius: 40,
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 40, fontWeight: FontWeight.normal, color: Colors.white),
        ),
      ),
    );
  }
}
