import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment9 extends StatelessWidget {
  const Segment9({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"List",'left'),
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
            buildParagraphSection1.buildParagraph("Python Lists", [
              "Lists are used to store multiple items in a single variable. They are one of four built-in data types in Python used to store collections of data, along with tuples, sets, and dictionaries. Each of these has different characteristics and uses.",
              "",
              "Lists are created using square brackets. List items are ordered, changeable, and allow duplicate values. Items are indexed, meaning the first item has index 0, the second has index 1, and so on."
            ]),
            Image.asset("images/code/code9.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Ordered", [
              "When we say lists are ordered, it means their items have a defined order that will not change. If you add new items, they will be placed at the end of the list. Although some list methods can alter order, lists generally maintain the order of their items."
            ]),

            buildParagraphSection1.buildParagraph("Changeable", [
              "Lists are changeable, meaning we can modify, add, and remove items after the list has been created."
            ]),

            buildParagraphSection1.buildParagraph("Allow Duplicates", [
              "Because lists are indexed, they can contain duplicate values. Each duplicate is treated as a separate element occupying its own index position."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("List Length", [
              "You can determine how many items a list contains using the len() function."
            ]),
            Image.asset("images/code/code9.1.png"),

            buildParagraphSection1.buildParagraph("List Items - Data Types", [
              "List items can store values of any data type, such as strings, integers, and booleans. A single list can even contain a mix of different data types."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Access Items", [
              "List items are indexed, and you can access them by referring to their index number. The first item has index 0.",
              "Negative indexing can be used to access items from the end of the list, where -1 refers to the last item, -2 to the second last, and so on."
            ]),
            Image.asset("images/code/code9.2.png"),
            Image.asset("images/code/code9.3.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Range of Indexes", [
              "You can specify a range of indexes to return part of a list. The range will produce a new list with the specified items.",
              "For example, specifying start and end indexes will return items starting from the start index (included) and ending before the end index (excluded).",
              "Leaving out the start value begins from the first item, while leaving out the end value goes to the last item. Negative indexes can also be used in ranges."
            ]),
            Image.asset("images/code/code9.4.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Check if Item Exists", [
              "To check whether a specific item exists in a list, use the in keyword. It returns True if the item is found and False otherwise."
            ]),
            Image.asset("images/code/code9.5.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Change Item Value", [
              "To change a value in a list, refer to its index number and assign a new value."
            ]),
            Image.asset("images/code/code9.6.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Append Items", [
              "To add an item to the end of the list, use the append() method."
            ]),
            Image.asset("images/code/code9.7.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Insert Items", [
              "To insert an item at a specific index, use the insert() method. This places the new item at the chosen position, shifting the remaining items to the right."
            ]),
            Image.asset("images/code/code9.8.png"),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Remove List Items", [
              "You can remove a specific item using the remove() method. If multiple items share the same value, only the first occurrence is removed.",
              "The pop() method removes an item based on its index, while del can be used to delete an entire list or a specific element."
            ]),
            Image.asset("images/code/code9.9.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Loop Through a List", [
              "You can loop through list items using a for loop to perform actions on each element.",
              "You can also loop through indexes by combining the range() and len() functions to iterate by index number."
            ]),
            Image.asset("images/code/code9.10.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("List Comprehension", [
              "List comprehension provides a concise way to create new lists based on existing ones. It allows you to write compact loops and conditions in a single line of code to build a list efficiently."
            ]),
            Image.asset("images/code/code9.11.png"),
          ],
        ),
      ),
    );
  }
}