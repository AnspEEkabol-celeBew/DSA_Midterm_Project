import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment6 extends StatelessWidget {
  const Segment6({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Strings",'left'),
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
            buildParagraphSection1.buildParagraph("Strings", [
              "Strings in Python are surrounded by either single quotation marks or double quotation marks.",
              "'hello' is the same as \"hello\".",
              "",
              "You can display a string literal with the print() function.",
              "Example:"
            ]),
            Image.asset('images/code/code6.png'),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Quotes Inside Quotes", [
              "You can use quotes inside a string, as long as they don't match the quotes surrounding the string.",
              "Example:"
            ]),
            Image.asset('images/code/code6.1.png'),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Assign String to a Variable", [
              "Assigning a string to a variable is done with the variable name followed by an equal sign and the string.",
              "Example:"
            ]),
            Image.asset('images/code/code6.2.png'),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Multiline Strings", [
              "You can assign a multiline string to a variable by using three quotes.",
              "You can use three double quotes or three single quotes"
            ]),
            Image.asset('images/code/code6.3.png'),
            buildParagraphSection1.buildParagraph("Slicing", [
              "You can return a range of characters by using the slice syntax.",
              "Specify the start index and the end index, separated by a colon, to return a part of the string.",
              "",
              "Get the characters from position 2 to position 5 (not included).",
              "Note: The first character has index 0."
            ]),
            Image.asset("images/code/code6.4.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Slice From the Start", [
              "By leaving out the start index, the range will start at the first character.",
              "",
              "Get the characters from the start to position 5 (not included)."
            ]),
            Image.asset("images/code/code6.5.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Modify Strings", [
              "Python has a set of built-in methods that you can use on strings."
            ]),
            buildParagraphSection1.buildParagraph("Upper Case", [
              "The upper() method returns the string in upper case."
            ]),
            Image.asset("images/code/code6.6.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Lower Case", [
              "The lower() method returns the string in lower case."
            ]),
            Image.asset("images/code/code6.7.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Remove Whitespace", [
              "Whitespace is the space before and/or after the actual text, and very often you want to remove this space.",
              "",
              "The strip() method removes any whitespace from the beginning or the end."
            ]),
            Image.asset("images/code/code6.8.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("String Concatenation", [
              "To concatenate, or combine, two strings, you can use the + operator.",
              "",
              "Merge variable a with variable b into variable c.",
              "To add a space between them, add a space character between the quotes."
            ]),
            Image.asset("images/code/code6.9.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("String Format", [
              "As we learned in the Python Variables chapter, we cannot combine strings and numbers directly.",
              "",
              "But we can combine strings and numbers by using f-strings or the format() method!"
            ]),
            buildParagraphSection1.buildParagraph("F-Strings", [
              "F-String was introduced in Python 3.6, and is now the preferred way of formatting strings.",
              "To specify a string as an f-string, simply put an 'f' in front of the string literal, and add curly brackets {} as placeholders for variables or operations.",
              "",
              "Create an f-string."
            ]),
            Image.asset("images/code/code6.10.png"),
          ],
        ),
      ),
    );
  }
}