
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildWidgets{

  static List<Widget> listOfWidgets ;
  static   int _notificationNumber = 2;
  static   bool _withOpacity = false;

  static TextStyle get _numbersStyle =>  GoogleFonts.openSansCondensed(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0);
  static TextStyle get _subContentStyle =>  GoogleFonts.actor(color:_withOpacity?Colors.white.withOpacity(0.65):Colors.black87);


  static ShapeBorder shapeBorder(double _borderRadius)=>RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(_borderRadius),
  );


  //To build profile card
  static Widget buildProfileCard() => Expanded(
    child: Card(
      shadowColor: Colors.black,
      elevation: 20,
      color: Colors.lightBlue,
      shape: shapeBorder(20.0),
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage:NetworkImage('https://i.pinimg.com/originals/f6/13/8f/f6138f0db1d04f8536cfe42544915eda.png'),
                ),
              ),

              buildCustomColumn(
                  mainContent:buildCustomText('Mohammad Abureesh\t\t',GoogleFonts.abel(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),TextAlign.center),
                  subContent:buildCustomText('information technology',GoogleFonts.montserrat(color: Colors.white54,fontSize:10),TextAlign.center),
                  crossAxisAlignment:CrossAxisAlignment.start,
                  distanceBetweenWidgets:4
              ),
              Icon(Icons.border_color,color: Colors.white,),
            ],
          ),
          SizedBox(height:10,),
          getCardContent(),
        ],
      ),
    ),
  );
//end profile card


  //To build custom text widget
  static Widget buildCustomText(String _data, TextStyle _googleFont,_textAlign) => Text("$_data",style: _googleFont,textAlign: _textAlign,);

  //To build profile card Content
  static Widget getCardContent() {
    _withOpacity=true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        buildCustomColumn(mainContent:buildCustomText('846',_numbersStyle,TextAlign.center),subContent:buildCustomText('Collect',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:0.0),
        buildCustomColumn(mainContent:buildCustomText('51',_numbersStyle,TextAlign.center),subContent:buildCustomText('Attention',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:0.0),
        buildCustomColumn(mainContent:buildCustomText('267',_numbersStyle,TextAlign.center),subContent:buildCustomText('Track',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:0.0),
        buildCustomColumn(mainContent:buildCustomText('39',_numbersStyle,TextAlign.center),subContent:buildCustomText('Coupons',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:0.0),
      ],

    );
  }

  static Widget buildCustomColumn({Widget mainContent, Widget subContent,CrossAxisAlignment crossAxisAlignment,double distanceBetweenWidgets}){
    return mainContent!=null&&subContent!=null
        ? Column(
          crossAxisAlignment:crossAxisAlignment,
          children: [
            mainContent,
            SizedBox(height:distanceBetweenWidgets,),
             subContent,
          ],
    )
        :Container();
  }


  static Widget buildIconsRow() {
    initIconsRowData();

    _withOpacity = false;

    return  Padding(
      padding: EdgeInsets.only(top:30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:listOfWidgets
      ),
    );
  }

  static Widget button(IconData _icon,bool hasNotification)=> Stack(
    children: [
      FlatButton(
          shape:CircleBorder(),
          splashColor: Colors.blue,
          color: Colors.black12,
          onPressed:(){}, child:Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(_icon,size: 30.0,))
      ),

      if(hasNotification!=false)
        Positioned(
          right:18,
          top:2,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),),
            constraints: BoxConstraints(
              minWidth: 15,
              minHeight: 15,
            ),
            child: buildCustomText('$_notificationNumber',GoogleFonts.abel(fontSize: 8,color: Colors.white,),TextAlign.center),
          ),

        ),
    ],
  );

  //To initial row data
  static void initIconsRowData(){
    listOfWidgets = List<Widget>();

    listOfWidgets.add(buildCustomColumn(mainContent:button(Icons.account_balance_wallet,false),subContent:buildCustomText('Wallet',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:4));
    listOfWidgets.add(buildCustomColumn(mainContent:button(Icons.local_shipping,false),subContent:buildCustomText('Delivery',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:4));
    listOfWidgets.add(buildCustomColumn(mainContent:button(Icons.message,true),subContent:buildCustomText('Message',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:4));
    listOfWidgets.add(buildCustomColumn(mainContent:button(Icons.monetization_on,false),subContent:buildCustomText('Service',_subContentStyle,TextAlign.center),crossAxisAlignment:CrossAxisAlignment.center,distanceBetweenWidgets:4));
  }
}