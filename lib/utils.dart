import 'dart:collection';
import 'dart:ui';
import 'package:intl/intl.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:what_you_learned_today/dao/figures.dart';

List<Figure> listFigures(String flag) {
  List<Figure> returnFigures = <Figure>[];

  for(var figure in figures){
    if(figure.flag == flag) {
      returnFigures.add(figure);
    }
  }

  return returnFigures;
}

String seletectedFlag = "";

String getSeletectedFlag() {
  return seletectedFlag;
}

Widget createFlag(String flag, List<Color> colors, String name) {
  return GestureDetector(

      child: Container(
    width: 90.0,
    height: 90.0,
    child:
    Stack(
        children: [

          Positioned.fill(
              child: Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    flag,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              )
          ),
        ]

    ),
    decoration: new BoxDecoration(
      gradient: RadialGradient(
        colors: colors,

      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 3,
          offset: Offset(0, 1), // changes position of shadow
        ),
      ],
      shape: BoxShape.circle,
    ),));

}




