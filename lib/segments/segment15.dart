import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment15 extends StatelessWidget {
  const Segment15({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Functions",'left'),
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
            buildParagraphSection1.buildParagraph("Python Functions", [
              "A function in Python is a block of reusable code that only runs when it is called.",
              "Functions are useful for organizing code, reducing repetition, and improving readability.",
              "They can also return data as a result of their execution."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Creating a Function", [
              "Functions in Python are created using the def keyword, followed by the function name and parentheses.",
              "The code block inside the function must be indented, as Python uses indentation to define scope.",
              "This defines a function named greet() that prints a message when called."
            ]),

            buildParagraphSection1.buildParagraph("Calling a Function", [
              "To execute a function, simply call it by its name followed by parentheses.",
              "You can call the same function multiple times to reuse its code as needed."
            ]),
            Image.asset("images/code/code15.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python Function Arguments", [
              "Functions can accept data through arguments, which are values passed into the function when it is called.",
              "Arguments are listed inside the parentheses after the function name.",
              "You can add as many arguments as needed by separating them with commas.",
              "",
              "In the example below, the function has one argument (fname).",
              "When the function is called, we pass a name to it, which is then used inside the function body.",
              "",
              "Each time the function is called, the argument value is substituted for fname."
            ]),
            Image.asset("images/code/code15.1.png"),
          ],
        ),
      ),
    );
  }
}