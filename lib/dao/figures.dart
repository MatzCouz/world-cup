
import 'package:flutter/material.dart';

const repetead = "REPETEAD";
const requested = "REQUESTED";
const none = "UNKNOWN";
const getter = "KNOWN";

const UKN = "UNKNOWN";
const BRL = "BRL";
const ARG = "ARG";
const QAT = "QAT";
const ECU = "ECU";


var mapColors = {
    UKN: <Color>[Colors.grey, Colors.black12],
    BRL: <Color>[Colors.green, Colors.lightGreen],
    ARG: <Color>[Colors.blue, Colors.lightBlueAccent],
    QAT: <Color>[Colors.red, Colors.white],
    ECU: <Color>[Colors.red, Colors.yellow],

};



class Figure {
    String id;
    String flag;
    String status;
    Figure(this.id, this.flag, this.status);
    Map<String,dynamic> toMap(){
        return {
            "number":id,
            "flag":flag,
            "status":status
        };
    }
}

Map<String,dynamic> toMapFigures(){
    return {
        "figures": figures
    };
}

List<Figure> figures = [
    Figure("1", BRL, none),
    Figure("2", BRL, none),
    Figure("3", BRL, none),
    Figure("4", BRL, none),
    Figure("5", BRL, none),
    Figure("6", BRL, none),
    Figure("7", BRL, none),
    Figure("8", BRL, none),
    Figure("9", BRL, none),
    Figure("10", BRL, none),
    Figure("11", BRL, none),
    Figure("12", BRL, none),
    Figure("13", BRL, none),
    Figure("14", BRL, none),
    Figure("15", BRL, none),
    Figure("16", BRL, none),
    Figure("17", BRL, none),
    Figure("18", BRL, none),
    Figure("19", BRL, none),
    Figure("20", BRL, none),

    Figure("1", QAT, none),
    Figure("2", QAT, none),
    Figure("3", QAT, none),
    Figure("4", QAT, none),
    Figure("5", QAT, none),
    Figure("6", QAT, none),
    Figure("7", QAT, none),
    Figure("8", QAT, none),
    Figure("9", QAT, none),
    Figure("10", QAT, none),
    Figure("11", QAT, none),
    Figure("12", QAT, none),
    Figure("13", QAT, none),
    Figure("14", QAT, none),
    Figure("15", QAT, none),
    Figure("16", QAT, none),
    Figure("17", QAT, none),
    Figure("18", QAT, none),
    Figure("19", QAT, none),
    Figure("20", QAT, none),

    Figure("1", ECU, none),
    Figure("2", ECU, none),
    Figure("3", ECU, none),
    Figure("4", ECU, none),
    Figure("5", ECU, none),
    Figure("6", ECU, none),
    Figure("7", ECU, none),
    Figure("8", ECU, none),
    Figure("9", ECU, none),
    Figure("10", ECU, none),
    Figure("11", ECU, none),
    Figure("12", ECU, none),
    Figure("13", ECU, none),
    Figure("14", ECU, none),
    Figure("15", ECU, none),
    Figure("16", ECU, none),
    Figure("17", ECU, none),
    Figure("18", ECU, none),
    Figure("19", ECU, none),
    Figure("20", ECU, none),

    Figure("3", ARG, requested),
    Figure("4", ARG, requested),
    Figure("5", ARG, none)
];

