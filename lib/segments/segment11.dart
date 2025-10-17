import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment11 extends StatelessWidget {
  const Segment11({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Sets",'left'),
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
            buildParagraphSection1.buildParagraph("Python Sets", [
              "Sets are used to store multiple items in a single variable. A set is one of the four built-in data types in Python used to store collections of data — the other three are List, Tuple, and Dictionary — each with different qualities and uses.",
              "A set is a collection that is unordered, unchangeable*, and unindexed. Sets are written using curly brackets.",
              "Note: Set items themselves are unchangeable, but you can still remove existing items or add new items to the set. Also, sets are unordered, so you cannot be sure in which order the items will appear."
            ]),
            Image.asset("images/code/code11.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Set Items", [
              "Set items are unordered, unchangeable, and do not allow duplicate values. Since sets do not have a defined order, their items can appear in a different order every time they are used.",
              "You cannot access items in a set using an index or key, because sets are unindexed."
            ]),

            buildParagraphSection1.buildParagraph("Unordered", [
              "Unordered means that the items in a set do not have a fixed order. The order may change each time the set is displayed or iterated over, and items cannot be accessed by index."
            ]),

            buildParagraphSection1.buildParagraph("Unchangeable", [
              "Set items cannot be modified directly after the set is created. However, you can remove items or add new ones. This makes sets partially flexible while still preventing direct item updates."
            ]),

            buildParagraphSection1.buildParagraph("Duplicates Not Allowed", [
              "Sets cannot contain duplicate items. If duplicate values are included during creation, Python will automatically ignore the extra copies and only keep one instance of each unique value."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Access Items", [
              "You cannot access items in a set using indexes or keys. Instead, you can loop through the set using a for loop, or check whether an item exists in the set using the 'in' keyword."
            ]),
            Image.asset("images/code/code11.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Add Items", [
              "Although sets are unchangeable in terms of direct modification, you can add new items using the add() method. This method inserts one new element into the set if it doesn’t already exist."
            ]),
            Image.asset("images/code/code11.2.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Remove Items", [
              "You can remove items from a set using the remove() or discard() methods. The remove() method will raise an error if the item does not exist, while discard() will not."
            ]),
            Image.asset("images/code/code11.3.png"),
          ],
        ),
      ),
    );
  }
}