import 'package:flutter/material.dart';
import 'package:untitled1/button.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';

  void equalPress(){
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    children: [
                  Text(userInput.toString(),
                    style: const TextStyle(fontSize: 30, color: Colors.white),),
                      Text(answer.toString(), style: TextStyle(fontSize: 30, color: Colors.white),),
                    ],
                  ),
                ),
              ),
            Expanded(
              flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Buttons(
                          title: 'AC',onPress: (){
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                        },

                        ),
                        Buttons(
                          title: '+/-',
                          onPress: (){
                            userInput += '+/-';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '%',
                          onPress: (){
                            userInput += '%';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '/',
                          colors: Color(0xffe0a004),
                          onPress: (){
                            userInput += '/';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          title: '7',
                          onPress: (){
                            userInput += '7';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '8',
                          onPress: (){
                            userInput += '8';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '9',
                          onPress: (){
userInput += '9';
setState(() {

});
                          },
                        ),
                        Buttons(
                          title: 'x',
                          colors: Color(0xffe0a004),
                          onPress: (){
                            userInput += 'x';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          title: '4',
                          onPress: (){
                            userInput += '4';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '5',
                          onPress: (){
                            userInput += '5';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '6',
                          onPress: (){
                            userInput += '6';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '-',
                          colors: Color(0xffe0a004),
                          onPress: (){
                            userInput += '-';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          title: '1',onPress: (){
                          userInput += '1';
                          setState(() {

                          });
                        },
                        ),
                        Buttons(
                          title: '2',onPress: (){
                          userInput += '2';
                          setState(() {

                          });
                        },
                        ),
                        Buttons(
                          title: '3',onPress: (){
                          userInput += '3';
                          setState(() {

                          });
                        },
                        ),
                        Buttons(
                          title: '+',
                          colors: Color(0xffe0a004),
                          onPress: (){
                            userInput += '+';
                            setState(() {

                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Buttons(
                          title: '0',
                          onPress: (){
                            userInput += '0';
                            setState(() {

                            });
                          },
                        ),
                        Buttons(
                          title: '.',
                          onPress: (){
                            userInput += '.';
                            setState(() {

                            });

                          },
                        ),
                        Buttons(
                          title: 'DEL',onPress: (){
                            userInput = userInput.substring(0, userInput.length-1);
                         // userInput = userInput.substring(0, userInput.length-1);
                          setState(() {

                          });
                        },
                        ),
                        Buttons(
                          title: '=',
                          colors: Color(0xffe0a004),onPress: (){
                          equalPress();
                          setState(() {

                          });
                        },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
