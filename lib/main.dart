import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:what_you_learned_today/first.dart';
import 'package:what_you_learned_today/register_cup.dart';






Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromRGBO(64, 3, 97, 5),
            secondary: Colors.red,
            background: Colors.red
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Nunito Sans',
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/": (context) => RegisterCupPage(),
          "/login": (context) => LoginPage(),
        }
    );
  }
}
