import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment14 extends StatelessWidget {
  const Segment14({super.key});

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
            buildText('null',29.0,'center',colorAccent2,128,"For & While Loops",'left'),
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
            buildParagraphSection1.buildParagraph("Python While Loops", [
              "Python supports two primary types of loops that allow repeated execution of a block of code: while loops and for loops.",
              "The while loop repeatedly executes a block of code as long as a specified condition remains true. It is especially useful when the number of iterations is not predetermined."
            ]),
            Image.asset("images/code/code14.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("The while Loop", [
              "The while loop checks a condition before each iteration and continues executing as long as that condition evaluates to true.",
              "It is important to ensure that the condition eventually becomes false; otherwise, the loop will run indefinitely.",
              "Typically, this involves updating a variable within the loop that affects the condition, such as an index counter."
            ]),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("The break Statement", [
              "The break statement is used to immediately terminate a loop, even if its condition is still true.",
              "It is often used when a specific condition inside the loop is met and no further iterations are necessary."
            ]),
            Image.asset("images/code/code14.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("The continue Statement", [
              "The continue statement skips the rest of the code inside the current loop iteration and proceeds directly to the next iteration.",
              "It is commonly used when certain values or cases should be ignored without stopping the loop entirely."
            ]),
            Image.asset("images/code/code14.2.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("The else Statement", [
              "An else block can optionally follow a while loop and executes once when the loop condition becomes false.",
              "This feature is useful for executing final actions after all valid iterations have completed."
            ]),
            Image.asset("images/code/code14.3.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Python For Loops", [
              "A for loop in Python is used to iterate over a sequence such as a list, tuple, dictionary, set, or string.",
              "Unlike traditional for loops in some other programming languages, Python’s for loop behaves like an iterator method that automatically retrieves each element from the sequence without needing an explicit index variable.",
              "This allows developers to write clean and readable looping logic."
            ]),
            Image.asset("images/code/code14.4.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Looping Through a String", [
              "Strings in Python are also iterable objects, meaning you can loop through each character in a string just like elements in a list.",
              "Each iteration accesses one character at a time, making it simple to analyze or manipulate string data."
            ]),
            Image.asset("images/code/code14.5.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("The range() Function", [
              "The range() function generates a sequence of numbers, which makes it ideal for creating loops that run a specific number of times.",
              "By default, range() starts at 0, increments by 1, and stops before the specified end value.",
              "This is often used when the loop logic depends on counting or numeric iteration rather than iterating through a collection."
            ]),
            Image.asset("images/code/code14.6.png"),
          ],
        ),
      ),
    );
  }
}