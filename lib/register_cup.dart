

import 'dart:collection';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:what_you_learned_today/dao/figures.dart';
import 'package:what_you_learned_today/dao/global.dart';
import 'package:what_you_learned_today/utils.dart';
import 'package:what_you_learned_today/widgets/open_figures.dart';
import 'package:country_calling_code_picker/picker.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:advance_text_field/advance_text_field.dart';




import 'footer.dart';

class RegisterCupPage extends StatefulWidget {
  @override
  _RegisterCupPageState createState() => _RegisterCupPageState();
}

class Flag {
  Flag(this.flag, this.country);
  String flag;
  String country;
}

class _RegisterCupPageState extends State<RegisterCupPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.red[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Meu álbum",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      body:
            Align(
              alignment: Alignment.topCenter,
              child: testBody(),

      ),
    );
  }

  Widget testBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "QAT";
                  });}, child:
                  ExpandedCustom("🇶🇦", [Colors.white60, Colors.redAccent], "QAT")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "ECU";
                  });}, child: ExpandedCustom("🇪🇨", [Colors.red, Colors.yellow], "ECU")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "GHA";
                  });}, child: ExpandedCustom("🇬🇭", [Colors.yellow, Colors.green], "GHA")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),


                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "QAT";
                  });}, child:
                  ExpandedCustom("🇶🇦", [Colors.white60, Colors.redAccent], "QAT")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "ECU";
                  });}, child: ExpandedCustom("🇪🇨", [Colors.red, Colors.yellow], "ECU")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "GHA";
                  });}, child: ExpandedCustom("🇬🇭", [Colors.yellow, Colors.green], "GHA")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),
                  GestureDetector(onTap: () {setState(() {
                    showFlag = !showFlag;
                    flagChoosed = "NED";
                  });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),


                ],
              ),
              Column(
                children: [
                  generateFigures(flagChoosed),
                ],
              )


            ],
          ),

          Card(
            child:
            CarouselSlider.builder(

              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>

                  Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 15,),

                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height / 6,
                                    width: MediaQuery.of(context).size.width - 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.deepPurple,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10),
                                      padding: EdgeInsets.all(10),
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "QAT";
                                          });}, child:
                                          ExpandedCustom("🇶🇦", [Colors.white60, Colors.redAccent], "QAT")),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "ECU";
                                          });}, child: ExpandedCustom("🇪🇨", [Colors.red, Colors.yellow], "ECU")),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "GHA";
                                          });}, child: ExpandedCustom("🇬🇭", [Colors.yellow, Colors.green], "GHA")),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "NED";
                                          });}, child: ExpandedCustom("🇳🇱", [Colors.white, Colors.blue], "NED")),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.height / 8,
                                    decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("GRUPO ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Text("A", style: TextStyle(fontSize: 15, color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height / 6,
                                    width: MediaQuery.of(context).size.width - 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.deepOrange,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 10),
                                      padding: EdgeInsets.all(10),
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "ENG";
                                          });}, child: ExpandedCustom("🇬🇧", [Colors.white, Colors.blue], "ENG")),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "MEX";
                                          });}, child: ExpandedCustom("🇲🇽", [Colors.white, Colors.lightGreen], "MEX")),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "USA";
                                          });}, child: ExpandedCustom("🇺🇸", [Colors.blueAccent, Colors.white, Colors.redAccent], "USA")),
                                          SizedBox(height: 20,),
                                          GestureDetector(onTap: () {setState(() {
                                            showFlag = !showFlag;
                                            flagChoosed = "WAL";
                                          });}, child: ExpandedCustom("🇮🇷", [Colors.white, Colors.green], "WAL")),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height / 7,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height / 20,
                                    width: MediaQuery.of(context).size.height / 8,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(10),

                                    ),
                                    child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("GRUPO ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 10,
                                          child: Text("B", style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),

                      ]
                  ),

              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.8,
                aspectRatio: 1.3,
                initialPage: 2,
                pageSnapping: true,
                scrollDirection: Axis.horizontal,

              ), itemCount: 10,

            ) ,
            elevation: 12,
          ),

          SizedBox(height: 18,),
          Row(
            children: [
              Expanded(
                  child: Divider(thickness: 3, endIndent: 10,)
              ),
            Opacity(opacity: 0.6, child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Text("FIGURINHAS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),),

              Expanded(
                  child: Divider(thickness: 3, indent: 10,)
              ),
            ],
          ),
          SizedBox(height: 15,),

          generateFigures(flagChoosed),
        ],
      )
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[


                SizedBox(
                  height: 30,
                ),

                SizedBox(height: 10,),
              GridView.count(
                mainAxisSpacing: 0,
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






              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Footer(),
        )
      ],
    );
  }


  Widget generateFigures(String flag) {
    List<Widget> a = <Widget>[];
    for(var x in figures) {
      if(x.flag == flag) {
        a.add(createUniqueFigure(x));
      }
    }

    return GridView.count(
      mainAxisSpacing: 10,
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
                SizedBox(height: 10,),

                Text(figure.flag, style: TextStyle(fontSize: 10, fontFamily: "Tests", color: Colors.white, inherit: true, shadows: outlinedText(strokeColor: Colors.black)),),
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