import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment8 extends StatelessWidget {
  const Segment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0, // Adds a prominent shadow
        shadowColor: Colors.black,
        toolbarHeight: 60.0,
        centerTitle: true,
        backgroundColor: colorAccent1,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildText('null',30.0,'center',colorAccent2,128,"Operators",'left'),
            SizedBox(
              height: 50.0,
              child: Image.asset("images/logo.png"),
            )
          ],
        )
      ),
      drawer: Drawer(
        child: drawerPreset(context)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildParagraphSection1.buildParagraph("Python Operators", [
              "Operators are used to perform operations on variables and values.",
              "",
              "For example, you can use the plus (+) operator to add together two values such as 10 + 5.",
            ]),
            Image.asset("images/code/code8.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python Arithmetic Operators", [
              "Arithmetic operators are used with numeric values to perform common mathematical operations.",
              "",
              "The addition operator (+) adds values, subtraction (-) subtracts, multiplication (*) multiplies, and division (/) divides.",
              "The modulus operator (%) returns the remainder, exponentiation (**) raises a number to a power, and floor division (//) removes the decimal part of the result."
            ]),
            Image.asset("images/code/code8.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python Assignment Operators", [
              "Assignment operators are used to assign values to variables.",
              "",
              "The equals sign (=) assigns a value, while combined forms like += or -= add or subtract and reassign in one step.",
              "Other examples include *=, /=, %=, //=, **=, &=, |=, ^=, >>=, <<=, and := which allows assignment within an expression."
            ]),
            Image.asset("images/code/code8.2.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python Comparison Operators", [
              "Comparison operators are used to compare two values and return a Boolean result.",
              "",
              "Examples include == for equal, != for not equal, > for greater than, < for less than, >= for greater than or equal to, and <= for less than or equal to."
            ]),
            Image.asset("images/code/code8.3.png"),
          ],
        ),
      ),
    );
  }
}