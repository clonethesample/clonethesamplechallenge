import 'package:clone_challenge_no_1/ui/authenticate_page.dart';
import 'package:clone_challenge_no_1/ui/detail_page.dart';
import 'package:clone_challenge_no_1/ui/home_page.dart';
import 'package:clone_challenge_no_1/utils/Constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clonethesample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: background,
        fontFamily: 'OpenSans'
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthenticatePage(),
        'home': (context) => HomePage(),
        'detail': (context) => DetailPage()
      },
    );
  }
}