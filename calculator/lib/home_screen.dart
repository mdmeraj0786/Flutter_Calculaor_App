import 'package:calculator/button/grey_Button.dart';
import 'package:calculator/button/orange_button.dart';
import 'package:calculator/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: blackColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput..toString(), style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),),
                      ),
                      const SizedBox(height: 15,),
                      Text(answer.toString(), style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GreyButtons(title: 'AC',onPress: (){
                            userInput = '';
                            answer = '';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '+/-',onPress: (){
                            userInput += '+/-';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '%', onPress: (){
                            userInput += '%';
                            setState(() {

                            });
                          },),
                          OrangeButtons(title: '/',onPress: (){
                            userInput += '/';
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          GreyButtons(title: '7',onPress: (){
                            userInput += '7';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '8',onPress: (){
                            userInput += '8';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '9', onPress: (){
                            userInput += '9';
                            setState(() {

                            });
                          },),
                          OrangeButtons(title: 'x',onPress: (){
                            userInput += 'x';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          GreyButtons(title: '4',onPress: (){
                            userInput += '4';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '5',onPress: (){
                            userInput += '5';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '6', onPress: (){
                            userInput += '6';
                            setState(() {

                            });
                          },),
                          OrangeButtons(title: '-',onPress: (){
                            userInput += '-';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          GreyButtons(title: '1',onPress: (){
                            userInput += '1';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '2',onPress: (){
                            userInput += '2';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '3', onPress: (){
                            userInput += '3';
                            setState(() {

                            });
                          },),
                          OrangeButtons(title: '+',onPress: (){
                            userInput += '+';
                            setState(() {

                            });
                          },),

                        ],
                      ),
                      Row(
                        children: [
                          GreyButtons(title: '0',onPress: (){
                            userInput += '0';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: '.',onPress: (){
                            userInput += '.';
                            setState(() {

                            });
                          },),
                          GreyButtons(title: 'DEL', onPress: (){
                            userInput = userInput.substring(0, userInput.length - 1);
                            setState(() {

                            });
                          },),
                          OrangeButtons(title: '=',onPress: (){
                            equalPress();
                            setState(() {

                            });
                          },),

                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void equalPress(){

    final userInputString = userInput.replaceAll('x', '*');
    Parser p = Parser();

    Expression expression = p.parse(userInputString);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL,   ContextModel());
    answer = eval.toString();
  }
}
