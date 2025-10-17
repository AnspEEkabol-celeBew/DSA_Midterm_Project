import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment2 extends StatelessWidget {
  const Segment2({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Comments",'left'),
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
            buildParagraphSection1.buildParagraph("Python Comments", [
              "Comments can be used to explain Python code.",
              "Comments can be used to make the code more readable.",
              "Comments can be used to make the code more readable."
            ]),
            buildParagraphSection1.buildParagraph("Creating a Comment", [
              "Comments start with a #, and Python will ignore them:"
            ]),
            Image.asset('images/code/code2.png'),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0, 'Comments can also be placed at the end of a line, and Python will ignore the rest of the line:', 'left'),
            ),
            Image.asset('images/code/code2.1.png'),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0, 'A comment does not have to be text that explains the code —it can also be used to prevent Python from executing a line of code.', 'left'),
            ),
            buildParagraphSection1.buildParagraph("Multiline Comments", [
              "Python does not have a specific syntax for multiline comments. To add a multiline comment, you can insert a # for each line.",
              "Or, you can use a multiline string. Since Python ignores string literals that are not assigned to a variable, you an place your comment inside triple quotes:"
            ]),
            Image.asset('images/code/code2.2.png'),
            Image.asset('images/code/code2.3.png')
          ],
        ),
      ),
    );
  }
}