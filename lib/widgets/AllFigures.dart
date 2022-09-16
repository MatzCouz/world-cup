import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../dao/figures.dart';
import '../dao/global.dart';
import 'open_figures.dart';


class AllFigures extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<AllFigures> {

  final CollectionReference users = FirebaseFirestore.instance.collection("cup_users");


  Future<void> updateJob(){
    return users.doc(id).update({'figures': figures.map((item) {
      return item.toMap();
    }).toList()});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.purple[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Nova conta",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xFFF3F3F5),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBody() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
      children:  <Widget>[

        Expanded(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 10,),

          GridView.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,

        childAspectRatio: 0.8,
        crossAxisCount: 4,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "BRL";
          });}, child: ExpandedCustom("🇧🇷", [Colors.green, Colors.lightGreen], "BRL"),),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "ARG";
          });}, child:
          ExpandedCustom("🇫🇷", [Colors.blue, Colors.lightBlue], "ARG")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "QAT";
          });}, child:
          ExpandedCustom("🇶🇦", [Colors.white60, Colors.redAccent], "QAT")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "GHA";
          });}, child: ExpandedCustom("🇬🇭", [Colors.yellow, Colors.green], "GHA")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "ECU";
          });}, child: ExpandedCustom("🇪🇨", [Colors.red, Colors.yellow], "ECU")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "SEN";
          });}, child: ExpandedCustom("🇸🇳", [Colors.yellow, Colors.green], "SEN")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "NED";
          });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "ENG";
          });}, child: ExpandedCustom("🇬🇧", [Colors.white, Colors.blue], "ENG")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "IRN";
          });}, child: ExpandedCustom("🇮🇷", [Colors.white, Colors.green], "IRN")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "USA";
          });}, child: ExpandedCustom("🇺🇸", [Colors.blueAccent, Colors.white, Colors.redAccent], "USA")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "WAL";
          });}, child: ExpandedCustom("🇮🇷", [Colors.white, Colors.green], "WAL")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "ARG";
          });}, child: ExpandedCustom("🇦🇷", [Colors.white, Colors.lightBlueAccent], "ARG")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "KSA";
          });}, child: ExpandedCustom("🇸🇦", [Colors.green, Colors.lightGreen], "KSA")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "MEX";
          });}, child: ExpandedCustom("🇲🇽", [Colors.white, Colors.lightGreen], "MEX")),
          GestureDetector(onTap: () {setState(() {
            showFlag = !showFlag;
            flagChoosed = "POL";
          });}, child: ExpandedCustom("🇵🇱", [Colors.white, Colors.redAccent], "POL")),
        ],
      ),

      generateFigures(flagChoosed),
      ]
        )
        )
      )
      ]

    );
  }

  Widget generateFigures(String flag) {
    List<Widget> a = <Widget>[];
    for(var x in figures) {
      if(x.flag == flag) {
        a.add(createUniqueFigure(x));
      }
    }
    print(a);

    return GridView.count(
      mainAxisSpacing: 18,
      crossAxisSpacing: 12,

      childAspectRatio: 0.8,
      crossAxisCount: 4,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      children: a.toList(),
    );

  }

  Widget createUniqueFigure(Figure figure) {
    return GestureDetector(
        onTapDown: (details) {
          showMemberMenu(details.globalPosition.dx, details.globalPosition.dy, details.globalPosition.dx+100, details.globalPosition.dy+100, figure);
        },
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: ((figure.status == none || figure.status == requested ? mapColors[UKN] : mapColors[figure.flag])  ?? [Colors.black, Colors.grey])
                ),
                border: Border.all(
                  width: 3,
                  color: (figure.status == none || figure.status == requested  ? mapColors[UKN]!.first : mapColors[figure.flag]!.first),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),

                  Text(figure.flag, style: TextStyle(fontSize: 30, fontFamily: "Tests", color: Colors.white, inherit: true, shadows: outlinedText(strokeColor: Colors.black)),),
                  SizedBox(height: 5,),
                  Text("- "+figure.id+" -", style: TextStyle(fontSize: 25, fontFamily: "Tests", color: Colors.white, inherit: true, shadows: outlinedText(strokeColor: Colors.black)),
                  ),
                  SizedBox(height: 5,),

                ],
              ),
            ),
            Positioned(
                left: 52,
                top: -5,
                child: createCustomIcons(figure.status)
            ),

          ],
        )
    );
  }

  Stack createCustomIcons(String status) {
    switch (status) {
      case repetead:
        return  Stack(
          children: [
            _buildIcon(Icons.wifi_protected_setup_sharp, 40, Colors.red),
            _buildIcon(Icons.wifi_protected_setup_sharp, 33, Colors.redAccent),
          ],
        );

      case getter:
        return  Stack(
          children: [
            _buildIcon(Icons.star, 40, Colors.amber),
            _buildIcon(Icons.star, 33, Colors.yellow),
          ],
        );

      case requested:
        return Stack(
          children: [
            _buildIcon(Icons.panorama_fisheye, 30, Colors.red),
            _buildIcon(Icons.panorama_fisheye, 20, Colors.red),
            _buildIcon(Icons.panorama_fisheye, 10, Colors.red),
            _buildIcon(Icons.add, 30, Colors.red),

          ],
        );

      default:
        return  Stack(
          children: [
            SizedBox()
          ],
        );
    }
  }

  static List<Shadow> outlinedText({double strokeWidth = 1.1, Color strokeColor = Colors.black, int precision = 4}) {
    Set<Shadow> result = HashSet();
    for (int x = 1; x < strokeWidth + precision; x++) {
      for(int y = 1; y < strokeWidth + precision; y++) {
        double offsetX = x.toDouble();
        double offsetY = y.toDouble();
        result.add(Shadow(offset: Offset(-strokeWidth / offsetX, -strokeWidth / offsetY), color: strokeColor));
        result.add(Shadow(offset: Offset(-strokeWidth / offsetX, strokeWidth / offsetY), color: strokeColor));
        result.add(Shadow(offset: Offset(strokeWidth / offsetX, -strokeWidth / offsetY), color: strokeColor));
        result.add(Shadow(offset: Offset(strokeWidth / offsetX, strokeWidth / offsetY), color: strokeColor));
      }
    }
    return result.toList();
  }
  Widget _buildIcon(IconData icon, double size, Color color) {
    return Container(
      height: 48,
      width: 48,
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }

  void showMemberMenu(double l, double t, double r, double b, Figure figure) async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(l, t, r, b+200),
      items: [
        PopupMenuItem(
          value: 1,
          child: Text("CONSEGUI",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                color: Colors.green),),
          onTap: () {
            setState(() {
              figure.status = getter;
              updateJob();
            });
          },
        ),
        PopupMenuItem(
          value: 2,
          child: Text("QUERO TROCAR", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.green),),
          onTap: () {
            setState(() {
              figure.status = repetead;
              updateJob();

            });
          },
        ),
        PopupMenuItem(
          value: 2,
          child: Text("ESTOU PROCURANDO", style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: Colors.green),),
          onTap: () {
            setState(() {
              figure.status = requested;
              updateJob();

            });
          },
        ),
      ],
      elevation: 8.0,
    ).then((value) {
      if (value != null) print(value);
    });
  }

}