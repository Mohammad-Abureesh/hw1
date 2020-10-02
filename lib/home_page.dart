import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hw1/build_settings_list.dart';
import 'package:flutter_app_hw1/build_widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _leftRightPadding = 15.0;
  String _title = "Center";

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                  top: 40.0, left: _leftRightPadding, right: _leftRightPadding),
              height: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildWidgets.buildCustomText(
                      '$_title',
                      GoogleFonts.pacifico(
                          fontSize: 20.0, color: Colors.purple),
                      TextAlign.center),

                  SizedBox(
                    height: 8,
                  ),

                  BuildWidgets.buildProfileCard(),
                  BuildWidgets.buildIconsRow(),
                ],
              ),
            ),

            Expanded(child: BuildSettingsList()),
          ],
        ),
      );
}
