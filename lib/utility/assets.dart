import 'package:flutter/material.dart';
import '../main.dart';
import '../segments/segment1.dart';
import '../segments/segment2.dart';
import '../segments/segment3.dart';
import '../segments/segment4.dart';
import '../segments/segment5.dart';
import '../segments/segment6.dart';
import '../segments/segment7.dart';
import '../segments/segment8.dart';
import '../segments/segment9.dart';
import '../segments/segment10.dart';
import '../segments/segment11.dart';
import '../segments/segment12.dart';
import '../segments/segment13.dart';
import '../segments/segment14.dart';
import '../segments/segment15.dart';
import '../segments/tryItEditor.dart';

import 'builder.dart';

String name = "Anspe";
Color colorAccent1 = const Color(0xFF6A0DAD);
Color colorAccent2 = const Color(0xFFFCBA12);
Color colorAccent3 = const Color(0xFFE00DA8);
Color colorAccent4 = const Color(0xFF6D3A8A);
Color colorAccent5 = const Color(0xFFF4EEFF);
Color colorAccent6 = const Color(0xFFFCB347);
Color colorAccent7 = const Color(0xFFC11B95);

Color colorAccentExtra1 = const Color(0xFFB623C3);
Color colorAccentExtra2 = const Color(0xFFF9C20F);
Color colorAccentExtra3 = const Color(0xFF20CA7A);
Color colorAccentExtra4 = const Color(0xFFD01F1F);
Color colorAccentExtra5 = const Color(0xFF1932EE);
Color colorAccentExtra6 = const Color(0xFFF0058E);
Color colorAccentExtra7 = const Color(0xFF4F4F4F);
Color colorAccentExtra8 = const Color(0xFFD9A31C);
Color colorAccentExtra9 = const Color(0xFFBA5EBD);

Color textColorDark = const Color(0xFF2E2E2E);
Color textColorLight = const Color(0xFFFFFFFF);

ListView drawerPreset(var context) {
  return ListView(
    padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: colorAccent4),
          child: Column(
            children: <Widget>[
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("images/pythonLogo.png"),
              ),
            ),
            buildText('',20.0,'center',colorAccent2,128,"Python Tutorial",'null')
          ],
        ),
      ),
      buildListTile(context, const MainMenu(), "Home"),
      buildListTile(context, const Segment1(), "Syntax"),
      buildListTile(context, const Segment2(), "Comments"),
      buildListTile(context, const Segment3(), "Variables"),
      buildListTile(context, const Segment4(), "Data Types"),
      buildListTile(context, const Segment5(), "Casting"),
      buildListTile(context, const Segment6(), "Strings"),
      buildListTile(context, const Segment7(), "Booleans"),
      buildListTile(context, const Segment8(), "Operators"),
      buildListTile(context, const Segment9(), "List"),
      buildListTile(context, const Segment10(), "Tuples"),
      buildListTile(context, const Segment11(), "Sets"),
      buildListTile(context, const Segment12(), "Dictionaries"),
      buildListTile(context, const Segment13(), "If Else & Match"),
      buildListTile(context, const Segment14(), "For & While Loops"),
      buildListTile(context, const Segment15(), "Functions"),
      buildListTile(context, const TryIt(), "TryIt Editor")
    ],
  );
}