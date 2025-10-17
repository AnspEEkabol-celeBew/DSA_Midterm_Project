import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment5 extends StatelessWidget {
  const Segment5({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Casting",'left'),
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
            buildParagraphSection1.buildParagraph("Python Casting", [
              "There may be times when you want to specify a type for a variable. This can be done with casting.",
              "Python is an object-oriented language, and it uses classes to define data types, including its primitive types."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Specify a Variable Type", [
              "Casting in Python is done using constructor functions:",
              "",
              "int() - constructs an integer number from an integer literal, a float literal (by removing all decimals), or a string literal (if the string represents a whole number).",
              "float() - constructs a float number from an integer literal, a float literal, or a string literal (if the string represents a float or integer).",
              "str() - constructs a string from many data types, including strings, integer literals, and float literals.",
            ]),
            Image.asset('images/code/code5.png'),
            Image.asset('images/code/code5.1.png'),
            Image.asset('images/code/code5.2.png'),
          ],
        ),
      ),
    );
  }
}