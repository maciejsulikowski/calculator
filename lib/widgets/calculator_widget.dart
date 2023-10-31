import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    super.key,
  });

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var numberText = '0';
  var numberOne = '0';
  var numberTwo = '0';
  var result = '';

  void calculation(String buttonText) {
    if (buttonText == 'C') {
      setState(() {
        numberText = numberOne;
      });
    } else if (buttonText == '0' ||
        buttonText == '1' ||
        buttonText == '2' ||
        buttonText == '3' ||
        buttonText == '4' ||
        buttonText == '5' ||
        buttonText == '6' ||
        buttonText == '7' ||
        buttonText == '8' ||
        buttonText == '9') {
      setState(() {
        numberText = numberText.replaceFirst('0', '') + buttonText;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget button(String buttonText, Color? buttonCollor, Color? textColor) {
      return InkWell(
        onTap: () {
          calculation(buttonText);
        },
        child: CircleAvatar(
          backgroundColor: buttonCollor,
          radius: 40,
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.normal, color: textColor),
          ),
        ),
      );
    }

    Widget buttonIcon(Color buttonCollor, Color textColor) {
      return InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: buttonCollor,
          radius: 40,
          child: CircleAvatar(
            backgroundColor: buttonCollor,
            radius: 20,
            child: Image.asset(
              'images/back_icon.png',
            ),
          ),
        ),
      );
    }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                numberText,
                style: const TextStyle(color: Colors.white, fontSize: 70),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('C', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('%', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                buttonIcon(Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('÷', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('7', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('8', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('9', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('×', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('4', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('5', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('6', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('-', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('1', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('2', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('3', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('+', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('00', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('0', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button(',', Colors.grey, Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('=', Colors.orange, Colors.white),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
