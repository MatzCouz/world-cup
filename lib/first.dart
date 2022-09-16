
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:what_you_learned_today/widgets/AllFigures.dart';

import 'dao/figures.dart';
import 'dao/global.dart' as globals;
import 'footer.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.red[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              color: Colors.brown[300],
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 3),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xFFF3F3F5),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(25.0),
                    topRight: const Radius.circular(25.0),
                  )),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }


  bool isNoVisiblePassword = true;
  bool isRequest = false;

  Widget buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 0,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child:  Row(

                    children: [
                      Text("Comparar álbuns: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      Divider(thickness: 2,),
                      Stack(
                        children: [
                          _buildIcon(Icons.wifi_protected_setup_sharp, 40, Colors.brown),
                          _buildIcon(Icons.wifi_protected_setup_sharp, 33, Colors.black12),
                        ],
                      ),

                    ],
                  ),
                ),

                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Card(
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
                          child: Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'asserts/codigo_qr-300x300.png'
                                  ),
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(height: 5,),
                                Text(
                                    "Meu QR code"
                                ),
                              ]
                          ),
                        ),
                      ),

                      SizedBox(height: 45,),
                      Stack(
                        overflow: Overflow.visible,
                        children: [

                          Container(
                              alignment: Alignment.centerLeft,
                              height: MediaQuery.of(context).size.height / 20,
                              width: MediaQuery.of(context).size.width / 1.5 ,
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.brown,
                                  width: 2
                                ),
                                color: Colors.white

                              ),
                              child: Text("Escanear outro álbum", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),


                          ),
                           Positioned(
                             right: -5,
                               bottom: -15,
                               child: Container(
                             alignment: Alignment.center,
                             child: CircleAvatar(
                               radius: 30,
                               child:  Icon(Icons.qr_code, color: Colors.white, size: 40,),
                               backgroundColor: Colors.brown[300],

                             ),
                           ))


                        ],
                      ),


                    ],
                  ),
                ),

                SizedBox(height: 30),
                Divider(thickness: 3,)


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

  void setIsRequest(bool isRequest) {
    setState(() {
      this.isRequest = isRequest;
    });
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
}
