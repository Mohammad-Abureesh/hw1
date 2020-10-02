
import 'package:flutter/cupertino.dart';

class Settings
{

  String _title;
  String _content;
  IconData _icon;
  Color _color;

  //constructor
  Settings(this._title,this._content,this._color,this._icon);

  //getters
  get getTitle   => this._title;
  get getContent => this._content;
  get getIcon    => this._icon;
  get getColor   => this._color;

}