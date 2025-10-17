import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment4 extends StatelessWidget {
  const Segment4({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Data Types",'left'),
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
            buildParagraphSection1.buildParagraph("Python Data Types", [
              "In programming, data type is an important concept.",
              "Variables can store data of different types, and different types can do different things."
            ]),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Built-in Data Types", [
              "Python has the following data types built-in by default, in these categories:",
              "Text Type: str",
              "Numeric Types: int, float, complex",
              "Sequence Types: list, tuple, range",
              "Mapping Type: dict",
              "Set Types: set, frozenset",
              "Boolean Type: bool",
              "Binary Types: bytes, bytearray, memoryview",
              "None Type: NoneType"
            ]),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Getting the Data Type", [
              "You can get the data type of any object by using the type() function.",
              "",
              "Print the data type of the variable x."
            ]),
            Image.asset('images/code/code4.png'),
          ],
        ),
      ),
    );
  }
}