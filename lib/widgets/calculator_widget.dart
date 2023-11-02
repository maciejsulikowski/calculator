import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({
    super.key,
  });

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var equation = '0';
  var expression = '';
  bool isAdditionEnabled = true;
  bool isSubtractionEnabled = true;
  bool isMultiplicationEnabled = true;
  bool isDivisionEnabled = true;
  bool showError = false;

  showingError() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        equation = '0';
      });
    });
    return 'Error';
  }

  String calculate() {
    try {
      expression = equation;
      expression = expression.replaceAll('×', '*').replaceAll('÷', '/');
      var exp = Parser().parse(expression);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    } catch (e) {
      return showingError();
    }
  }

  void calculation(String buttonText) {
    if (buttonText == 'C') {
      setState(() {
        equation = '0';
      });
    } else if (buttonText == '⌫') {
      setState(() {
        equation = equation.substring(0, equation.length - 1);
        if (equation.isEmpty) {
          equation = '0';
        }
      });
    } else if (buttonText == '=') {
      setState(() {
        equation = calculate();
        if (equation.endsWith('.0')) {
          equation = equation.replaceAll('.0', '');
        }
        isAdditionEnabled = true;
        isSubtractionEnabled = true;
        isMultiplicationEnabled = true;
        isDivisionEnabled = true;
      });
    } else if (buttonText == '+' && isAdditionEnabled) {
      setState(() {
        equation += buttonText;
        isAdditionEnabled = false;
      });
    } else if (buttonText == '-' && isSubtractionEnabled) {
      setState(() {
        equation += buttonText;
        isSubtractionEnabled = false;
      });
    } else if (buttonText == '×' && isMultiplicationEnabled) {
      setState(() {
        equation += buttonText;
        isMultiplicationEnabled = false;
      });
    } else if (buttonText == '÷' && isDivisionEnabled) {
      setState(() {
        equation += buttonText;
        isDivisionEnabled = false;
      });
    } else if (buttonText == '%') {
      if (equation != '0') {
        double value = double.parse(equation);
        value = value / 100.0;
        setState(() {
          equation = value.toString();
        });
      }
    } else {
      setState(() {
        if (equation == '0') {
          equation = buttonText;
        } else {
          equation += buttonText;
        }
      });
    }
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        equation,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 70),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button('C', Colors.grey[600], Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('%', Colors.grey[600], Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('⌫', Colors.grey[600], Colors.black),
                const SizedBox(
                  width: 10,
                ),
                button('÷', Colors.grey[600], Colors.black),
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
                button('×', Colors.grey[600], Colors.black),
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
                button('-', Colors.grey[600], Colors.black),
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
                button('+', Colors.grey[600], Colors.black),
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
                button('.', Colors.grey, Colors.black),
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
