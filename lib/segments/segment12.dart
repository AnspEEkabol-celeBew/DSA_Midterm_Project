import 'package:flutter/material.dart';
import '../main.dart';
import '../utility/assets.dart';
import '../utility/builder.dart';

BuildParagraphSection buildParagraphSection1 = BuildParagraphSection([20.0,20.0,10.0,5.0], 'null', 28.0, 'left', colorAccent3, 100, 'left', 'null', 15.0, 'left', textColorDark, 0, 'left');

class Segment12 extends StatelessWidget {
  const Segment12({super.key});

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
            buildText('null',30.0,'center',colorAccent2,128,"Dictionaries",'left'),
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
            buildParagraphSection1.buildParagraph("Python Dictionaries", [
              "Dictionaries are used to store data values in key:value pairs. A dictionary is one of the four built-in data types in Python used to store collections of data, the others being List, Tuple, and Set — each with different qualities and purposes.",
              "A dictionary is a collection that is ordered*, changeable, and does not allow duplicates. As of Python version 3.7, dictionaries are ordered by default. In versions before Python 3.7, dictionaries were unordered.",
              "Dictionaries are written using curly brackets and each item is a key:value pair, where keys act as unique identifiers for their corresponding values."
            ]),
            Image.asset("images/code/code12.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Dictionary Items", [
              "Dictionary items are ordered, changeable, and do not allow duplicates. Each item is presented in a key:value pair, and items can be accessed by referring to their key name directly."
            ]),

            buildParagraphSection1.buildParagraph("Ordered or Unordered", [
              "As of Python version 3.7, dictionaries are ordered, meaning that the order of items is preserved. In earlier versions, dictionaries were unordered, so the item order was not guaranteed. Ordered dictionaries maintain the insertion order and do not change it unless explicitly modified."
            ]),

            buildParagraphSection1.buildParagraph("Changeable", [
              "Dictionaries are changeable, which means you can modify, add, or remove items after the dictionary is created. This makes dictionaries flexible and suitable for dynamic data handling."
            ]),

            buildParagraphSection1.buildParagraph("Duplicates Not Allowed", [
              "Dictionaries cannot have two items with the same key. If duplicate keys are used during creation, the last key:value pair will overwrite the earlier one. Keys must be unique, though values can be duplicated."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Dictionary Length", [
              "You can determine the total number of items in a dictionary by using the len() function, which returns the count of key:value pairs."
            ]),
            Image.asset("images/code/code12.1.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Change Values", [
              "You can change the value of a specific item by referring to its key. This allows you to update or modify existing data in the dictionary easily."
            ]),
            Image.asset("images/code/code12.2.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Adding Items", [
              "You can add new items to a dictionary by creating a new key and assigning a value to it. If the key does not already exist, it will be added as a new entry."
            ]),
            Image.asset("images/code/code12.3.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Dictionary Items - Data Types", [
              "Dictionary values can be of any data type — such as strings, integers, booleans, or even lists. This makes dictionaries highly versatile and capable of storing structured data."
            ]),

            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Accessing Items", [
              "You can access the value of a specific key by referring to it inside square brackets or by using the get() method. Both methods allow you to retrieve the value assigned to a given key."
            ]),
            Image.asset("images/code/code12.4.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Get Keys", [
              "The keys() method returns all the keys in the dictionary as a list-like view object. This is useful for iterating through keys or checking their existence."
            ]),
            Image.asset("images/code/code12.5.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Deleting Items", [
              "You can remove specific items from a dictionary using the del keyword. The del statement deletes an item based on its key name."
            ]),
            Image.asset("images/code/code12.6.png"),
            const SizedBox(height: 20.0),

            buildParagraphSection1.buildParagraph("Loop Through a Dictionary", [
              "You can loop through a dictionary using a for loop. When looping, the default iteration gives you the keys, but you can also retrieve the values or both keys and values using methods like values(), keys(), or items().",
              "Using items() allows you to loop through both the keys and their corresponding values simultaneously."
            ]),
            Image.asset("images/code/code12.7.png"),
          ],
        ),
      ),
    );
  }
}