import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment7 extends StatelessWidget {
  const Segment7({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Booleans",'left'),
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
            buildParagraphSection1.buildParagraph("Boolean Values", [
              "In programming you often need to know if an expression is True or False.",
              "",
              "You can evaluate any expression in Python, and get one of two answers, True or False.",
              "",
              "When you compare two values, the expression is evaluated and Python returns the Boolean answer such as when checking if 10 > 9, 10 == 9, or 10 < 9.",
              "",
              "When you run a condition in an if statement, Python returns True or False. For example, you can print a message based on whether the condition is True or False, such as comparing two variables a and b.",
            ]),
            Image.asset("images/code/code7.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Evaluate Values and Variables", [
              "The bool() function allows you to evaluate any value, and gives you True or False in return.",
              "",
              "You can use it to evaluate strings, numbers, and variables. For example, evaluating 'Hello' or 15 will both return True, as will variables with content.",
            ]),
            Image.asset("images/code/code7.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Most Values are True", [
              "Almost any value is evaluated to True if it has some sort of content.",
              "",
              "Any string is True, except empty strings.",
              "Any number is True, except 0.",
              "Any list, tuple, set, and dictionary are True, except empty ones."
            ]),
            Image.asset("images/code/code7.2.png"),
          ],
        ),
      ),
    );
  }
}