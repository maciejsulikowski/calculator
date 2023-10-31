import 'package:calculator/widgets/fifth_row_of_circles_widget.dart';
import 'package:calculator/widgets/first_row_of_circles_widget.dart';
import 'package:calculator/widgets/fourth_row_of_circles_widget.dart';
import 'package:calculator/widgets/second_row_of_circles_widget.dart';
import 'package:calculator/widgets/third_row_of_circles_widget.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    super.key,
  });

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Container(
        color: Colors.black,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                '0',
                style: TextStyle(color: Colors.white, fontSize: 70),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FirstRowOfCircles(),
            SizedBox(height: 10),
            SecondRowOfCircles(),
            SizedBox(height: 10),
            ThirdRowOfCircles(),
            SizedBox(height: 10),
            FourthRowOfCircles(),
            SizedBox(height: 10),
            FifthRowOfCircles(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'Calculator',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
