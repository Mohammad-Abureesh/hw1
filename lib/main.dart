import 'package:flutter/material.dart';
import 'package:flutter_app_hw1/home_page.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  );

}