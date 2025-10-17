import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment13 extends StatelessWidget {
  const Segment13({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"If Else & Match",'left'),
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
            buildParagraphSection1.buildParagraph("Python If ... Else", [
              "Python supports logical conditions similar to those used in mathematics and other programming languages. These conditions help you control the flow of your program by making decisions based on specific comparisons or logic."
            ]),
            Image.asset("images/code/code13.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python Conditions and If Statements", [
              "Python allows you to use common comparison operators to evaluate expressions and control logic:",
              "• Equals: a == b",
              "• Not Equals: a != b",
              "• Less than: a < b",
              "• Less than or equal to: a <= b",
              "• Greater than: a > b",
              "• Greater than or equal to: a >= b",
              "These conditions can be used in various situations, most commonly within 'if statements' and loops to check whether a condition is true or false."
            ]),

            buildParagraphSection1.buildParagraph("If Statement", [
              "An if statement is used to test a condition and execute a block of code only if the condition is true. It uses the 'if' keyword followed by a logical expression. If the expression evaluates to True, the indented block below it will run."
            ]),
            Image.asset("images/code/code13.1.png"),
            Image.asset("images/code/code13.2.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Indentation", [
              "Python uses indentation (spaces or tabs at the beginning of a line) to define the scope or block of code that belongs to a statement such as if, for, or while.",
              "Unlike many other programming languages that use curly braces {}, Python relies strictly on indentation. Incorrect indentation will result in an error, as it defines where each block of code begins and ends."
            ]),
            buildParagraphSection1.buildParagraph("The Python Match Statement", [
              "Instead of writing multiple if..else statements, Python provides the match statement as a cleaner and more structured alternative.",
              "The match statement allows you to compare a single expression against several possible values and execute the corresponding block of code for the first match."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("How It Works", [
              "• The match expression is evaluated once.",
              "• Its value is compared to the values of each case clause.",
              "• When a match is found, the corresponding block of code runs.",
              "This is particularly useful for selecting between many fixed options such as weekdays, commands, or categories."
            ]),
            Image.asset("images/code/code13.3.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Default Case", [
              "If none of the specified cases match the expression, a default block can be executed using the underscore character (_).",
              "This default case acts as a fallback, similar to the 'else' part of an if..else statement, and is typically placed as the last case in the match statement."
            ]),
            Image.asset("images/code/code13.4.png"),
          ],
        ),
      ),
    );
  }
}