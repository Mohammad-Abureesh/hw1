import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hw1/build_widgets.dart';
import 'package:flutter_app_hw1/settings.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildSettingsList extends StatefulWidget {
  @override
  _BuildSettingsListState createState() => _BuildSettingsListState();
}

class _BuildSettingsListState extends State<BuildSettingsList> {

  List<Settings> _listOfSettings ;

  @override
  void initState() {
    super.initState();

    this._listOfSettings = List<Settings>();
    initListOfSettings();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        itemCount: this._listOfSettings.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.all(4.0),
            child: Card(
              margin: EdgeInsets.all(10.0),
              elevation: 8,
              shadowColor: Colors.black ,
              shape:BuildWidgets.shapeBorder(20),

              child: ListTile(
                title: BuildWidgets.buildCustomText('${_listOfSettings[index].getTitle}',GoogleFonts.abel(color: Colors.black,fontWeight: FontWeight.bold),TextAlign.start),
                subtitle: BuildWidgets.buildCustomText('${_listOfSettings[index].getContent}',GoogleFonts.montserrat(color: Colors.grey,fontSize: 12.0),TextAlign.start),
                leading: CircleAvatar(
                  backgroundColor: _listOfSettings[index].getColor,
                  child:Icon(_listOfSettings[index].getIcon,color: Colors.white,),
                ),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios,size:15.0,),color: Colors.grey.withOpacity(0.70),onPressed: (){},),
              ),

            ),
          );
        });
  }

  void initListOfSettings(){
    addToListOfSettings("Address","Ensure your harvesting address",Colors.deepPurpleAccent,Icons.location_on);
    addToListOfSettings("Privacy","System permission change",Colors.pink,Icons.lock);
    addToListOfSettings("General","Basic functional settings",Colors.amber,Icons.layers);
    addToListOfSettings("Notification","Take over news in time",Colors.greenAccent,Icons.notifications);
  }

  //To create new object from <settings> and add on list of settings
 void addToListOfSettings(String _title,String _content,Color _color,IconData _icon){
    Settings item = Settings(_title,_content,_color,_icon);
    this._listOfSettings.add(item);
 }

}
