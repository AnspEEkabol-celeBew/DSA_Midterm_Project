import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment10 extends StatelessWidget {
  const Segment10({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Tuples",'left'),
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
            buildParagraphSection1.buildParagraph("Python Tuples", [
              "Tuples are used to store multiple items in a single variable. A tuple is one of the four built-in data types in Python used to store collections of data — the other three are List, Set, and Dictionary — each with different characteristics and uses.",
              "A tuple is a collection that is ordered and unchangeable (immutable). Tuples are written with round brackets and are commonly used when you want a collection that should not change."
            ]),
            Image.asset("images/code/code10.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Tuple Items", [
              "Tuple items are ordered, unchangeable, and allow duplicate values. Items are indexed — the first item has index [0], the second [1], and so on.",
              "Because tuples are indexed they can contain duplicate values just like lists."
            ]),
            buildParagraphSection1.buildParagraph("Ordered", [
              "When we say tuples are ordered, it means their items have a defined order that will not change. The order is preserved unless you recreate the tuple."
            ]),

            buildParagraphSection1.buildParagraph("Unchangeable", [
              "Tuples are unchangeable (immutable), meaning you cannot change, add, or remove items after the tuple has been created."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Accessing and Range Indexing", [
              "Accessing items in tuples uses the same indexing rules as lists: use positive indexes starting at 0, negative indexes (e.g. -1 for the last item), and slicing with [start:end] to get ranges.",
              "Range indexing with slices behaves the same as lists — the start index is included and the end index is excluded; leaving out start or end will go from the beginning or to the end respectively."
            ]),
            Image.asset("images/code/code10.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Change Tuple Values (Workaround)", [
              "Since tuples are immutable, you cannot modify them directly. To change a tuple you must convert it to a list, perform the updates on that list, and then convert the list back into a tuple. This convert-update-convert-back process is the standard way to 'modify' tuple contents."
            ]),
            Image.asset("images/code/code10.2.png"),
          ],
        ),
      ),
    );
  }
}