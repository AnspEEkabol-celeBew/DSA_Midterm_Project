import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment3 extends StatelessWidget {
  const Segment3({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Variables",'left'),
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
            buildParagraphSection1.buildParagraph("Python Variables", [
              "Variables are containers for storing data values."
            ]),
            buildParagraphSection1.buildParagraph("Creating a Variables", [
              "Python has no command for declaring a variable.",
              "A variable is created the moment you first assign a value to it."
            ]),
            Image.asset('images/code/code3.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0, 'Variables do not need to be declared with any particular type, and can even change type after they have been set.', 'left'),
            ),
            Image.asset('images/code/code3.1.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Many Values to Multiple Variables", [
              "Python allows you to assign values to multiple variables in one line:"
            ]),
            Image.asset('images/code/code3.2.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: buildText('null', 15.0, 'left', textColorDark, 0,
                  'Note: Make sure the number of variables matches the number of values, or else you will get an error.', 'left'),
            ),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("One Value to Multiple Variables", [
              "You can assign the same value to multiple variables in one line:"
            ]),
            Image.asset('images/code/code3.3.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Unpack a Collection", [
              "If you have a collection of values in a list, tuple, or other iterable, Python allows you to extract the values into variables. This is called unpacking."
            ]),
            Image.asset('images/code/code3.4.png'),
            buildParagraphSection1.buildParagraph("Global Variables", [
              "Variables that are created outside of a function (as in all of the examples in the previous pages) are known as global variables.",
              "Global variables can be used by everyone, both inside of functions and outside.",
              "",
              "Create a variable outside of a function, and use it inside the function."
            ]),
            Image.asset('images/code/code3.5.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Local vs Global Variables", [
              "If you create a variable with the same name inside a function, this variable will be local, and can only be used inside the function.",
              "The global variable with the same name will remain as it was — global, and with the original value."
            ]),
            Image.asset('images/code/code3.6.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("The global Keyword", [
              "Normally, when you create a variable inside a function, that variable is local, and can only be used inside that function.",
              "To create a global variable inside a function, you can use the global keyword.",
              "",
              "If you use the global keyword, the variable belongs to the global scope."
            ]),
            Image.asset('images/code/code3.7.png'),
            const SizedBox(height: 20.0),
            buildParagraphSection1.buildParagraph("Changing a Global Variable", [
              "You can also use the global keyword if you want to change a global variable inside a function.",
              "To change the value of a global variable inside a function, refer to the variable by using the global keyword."
            ]),
            Image.asset('images/code/code3.8.png'),
          ],
        ),
      ),
    );
  }
}