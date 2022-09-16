import 'package:flutter/material.dart';

import '../dao/figures.dart';
import 'package:what_you_learned_today/dao/global.dart';

class ExpandedCustom extends StatefulWidget {

  String flag;
  List<Color> colors;
  String name;

  ExpandedCustom(this.flag, this.colors, this.name);



  @override
  _ExpandedState createState() => _ExpandedState();
}

class _ExpandedState extends State<ExpandedCustom> {

  bool show = false;

  @override
  Widget build(BuildContext context) {

    return  Row(
      children: [
        Container(
        width: 50.0,
        height: 25.0,
        child:

          Stack(
              children: [

                Positioned.fill(
                    child: Opacity(
                      opacity: 0.9,
                      child: Align(
                        alignment: Alignment.center,
                        child:
                        Text(
                          widget.flag,
                          style: TextStyle(fontSize: 12),
                        ),

                      ),
                    )
                ),
              ]
          ),
      decoration: new BoxDecoration(
        gradient: RadialGradient(
          colors: widget.colors,

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
      ),),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(widget.name, style: TextStyle(fontSize: 10),),
        ),
      ],
    );
  }


  Widget generateFigures() {
    List<Column> a = <Column>[];
    for(var x in figures) {
      if(x.flag == this.widget.name) {
        Column s = Column(
          children: [
            Text(
            x.id
        ) ],
        );
        a.add(s);
      }
    }

    return Row(
      children: a.toList(),
    );
  }


}