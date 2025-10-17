import 'package:flutter/material.dart';
import 'utility/assets.dart';
import 'segments/segment1.dart';
import 'utility/builder.dart';
import 'utility/live_interval.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

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
            buildText('bold',30.0,'center',colorAccent2,128,"Python Tutorial",'left')
          ],
        )
      ),
      drawer: Drawer(
        child: drawerPreset(context),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: colorAccent3,
                  boxShadow: buildBoxShadow(15.0, 128),
                ),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                        child: SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset("images/pythonLogo.png"),
                        ),
                      ),
                    ),
                    buildText('bold',30.0,'center',colorAccent2,128,"Welcome to\nPython Tutorial",'null'),
                    const SizedBox(height: 50.0)
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              buildText('medium', 40.0, 'center', colorAccentExtra6, 128, "Introduction to\nPython",'null'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                buildText('null', 21.0, 'left', textColorDark, 100, "What is Python?",'left'),
                                const SizedBox(height: 10.0),
                                buildText('null', 14.0, 'left', textColorDark, 0, "Python is a widely used programming language developed by Guido van Rossum and first released in 1991.\nIt is commonly used for:\n • Web development (server-side applications)\n • Software development\n • Mathematical and data processing\n • System scripting and automation",'left')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                buildText('null', 21.0, 'left', textColorDark, 100, "What Can Python Do?",'left'),
                                const SizedBox(height: 10.0),
                                buildText('null', 14.0, 'left', textColorDark, 0, " • Python can run on servers to create web applications.\n • It can work with other software to automate workflows.\n • Python can connect to databases and manage files by reading and editing them.\n • It’s capable of handling large datasets and performing complex mathematical operations.\n • Developers can use Python for rapid prototyping or building full-scale production applications.",'left')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                buildText('null', 21.0, 'left', textColorDark, 100, "Why Use Python?",'left'),
                                const SizedBox(height: 10.0),
                                buildText('null', 14.0, 'left', textColorDark, 0, " • Works across multiple platforms: Windows, macOS, Linux, Raspberry Pi, and more.\n • Features a simple, English-like syntax, making it easy to learn and use.\n • Allows developers to write programs in fewer lines compared to many other languages.\n • Runs on an interpreter system, enabling immediate execution and quick prototyping.\n • Supports multiple programming paradigms: procedural, object-oriented, and functional.",'left')
                              ],
                            ),
                          ),
                          const SizedBox(height:30.0),
                          buildText('medium', 40.0, 'center', colorAccentExtra6, 128, "Want to Learn now?",'null'),
                          const SizedBox(height:20.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute<void>(
                                  builder: (context) => const Segment1(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorAccent3, // Background color
                              foregroundColor: Colors.white,
                              elevation: 5.0,// Text/icon color
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Rounded corners
                              ),
                            ),
                            child: const Text(
                              style: TextStyle(
                                fontFamily: 'Poppins'
                              ),"Get Started!"
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}