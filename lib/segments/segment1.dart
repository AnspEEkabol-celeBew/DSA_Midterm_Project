import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment1 extends StatelessWidget {
  const Segment1({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Syntax",'left'),
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
            buildParagraphSection1.buildParagraph("Python Syntax", [
              "Python syntax refers to the set of rules that defines how a Python program is written and interpreted.",
              "Unlike other programming languages, Python emphasizes readability and uses indentation (whitespace) to define code blocks, rather than braces {} or keywords."
            ]),
            Image.asset('images/code/code1.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Indentation", [
              "The indentation under the if statement as for example tells Python that the print() line belongs to the if block.",
              "If you remove the indentation, Python will show an IndentationError."
            ]),
            Image.asset('images/code/code1.1.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Execute Python Code/Syntax", [
              "You can execute Python syntax by writing code in a .py file and running it with the Python interpreter.",
              "For example, save the following code in a file named example.py:"
            ]),
            Image.asset('images/code/code1.2.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0, 'Then open your terminal or command prompt and type:', 'left'),
            ),
            Image.asset('images/code/code1.3.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0, 'You should see:', 'left'),
            ),
            Image.asset('images/code/code1.4.png')
          ],
        ),
      ),
    );
  }
}