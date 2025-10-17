import 'package:flutter/material.dart';

import 'assets.dart';

FontWeight? convertFontWeight(String strFw) {
  var fontWeights = {
    'light':FontWeight.w100,
    'medium':FontWeight.w500,
    'bold':FontWeight.w600,
    'extraBold':FontWeight.w800
  };
  return fontWeights[strFw];
}

TextAlign? convertTextAlign(String strTa) {
  var textAlignments = {
    'left':TextAlign.left,
    'center':TextAlign.center,
    'right':TextAlign.right
  };
  return textAlignments[strTa];
}

List<dynamic> addBetween(List<dynamic> list, dynamic adding) {
  List<dynamic> result = list.expand((x) => [x, adding]).toList();
  result.removeLast(); // Remove last added element
  return result;
}

Alignment convertAlign(String strA) {
  var alignments = {
    'left':Alignment.centerLeft,
    'center':Alignment.center,
    'right':Alignment.centerRight
  };
  return alignments[strA]?? Alignment.center;
}

Align buildText(String fontWeight, double fontSize, String textAlignment, Color color, int shadowOpacity, String content, String alignment) {
  return Align(
    alignment: convertAlign(alignment),
    child: Text(
      textAlign: convertTextAlign(textAlignment),
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: fontSize,
        fontWeight: convertFontWeight(fontWeight),
        color: color,
        shadows: [
          Shadow(
            blurRadius: 15.0,
            color: Color.fromARGB(shadowOpacity.clamp(0, 255), 0, 0, 0),
            offset: const Offset(0.0, 0.0),
          ),
        ],
      ),content,
    ),
  );
}

ListTile buildListTile(var context, var segment, String content) {
  return ListTile(
    title: buildText('',18.0,'left',textColorDark,0,content,'left'),
    onTap: () {
      Navigator.push(context,MaterialPageRoute<void>(
        builder: (context) => SafeArea(
          top: false,
          left: false,
          right: false,
          bottom: true,
          child: segment,
        ),
      ));
    },
  );
}

class BuildParagraphSection {
    List<double> spacing;
    String titleFontWeight;
    double titleFontSize;
    String titleTextAlignment;
    Color titleColor;
    int titleShadowOpacity;
    String titleAlignment;
    String fontWeight;
    double fontSize;
    String textAlignment;
    Color color;
    int shadowOpacity;
    String alignment;
    BuildParagraphSection(this.spacing,this.titleFontWeight,this.titleFontSize,this.titleTextAlignment,this.titleColor,this.titleShadowOpacity,this.titleAlignment,
        this.fontWeight,this.fontSize,this.textAlignment,this.color,this.shadowOpacity,this.alignment);

    Padding buildParagraph(String titleContent, List<String> paragraphs) {
      List<Widget> paragraphTemp = [];
      for (int i=0;i<paragraphs.length;i++) {
        paragraphTemp.add(buildText(fontWeight, fontSize, textAlignment, color, shadowOpacity, paragraphs[i],alignment));
        if (i != paragraphs.length - 1) {
          paragraphTemp.add(SizedBox(height: spacing[3]));
        }
      }
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing[0],vertical: spacing[1]),
        child: Column(
          children: <Widget>[
          buildText(titleFontWeight, titleFontSize, titleTextAlignment, titleColor, titleShadowOpacity, titleContent, titleAlignment),
          SizedBox(height: spacing[2]),
          Column(
            children: paragraphTemp,
          )
        ],
      ),
    );
  }
}

List<BoxShadow> buildBoxShadow(double radius, int opacity) {
  return [BoxShadow(
    blurRadius: radius,
    color: Color.fromARGB(opacity.clamp(0, 255), 0, 0, 0),
    offset: const Offset(0.0, 0.0),
    ),
  ];
}

List<BoxShadow> buildGeneralShadow(double radius, int opacity) {
  return [BoxShadow(
    blurRadius: radius,
    color: Color.fromARGB(opacity.clamp(0, 255), 0, 0, 0),
    offset: const Offset(0.0, 0.0),
    ),
  ];
}