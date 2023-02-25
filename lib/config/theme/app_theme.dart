import 'package:flutter/material.dart';
const Color _customColor = Color(0xff49149f);
const List<Color> _colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.pink,
];
class AppTheme{
  final int selectedColor;
  AppTheme({
    this.selectedColor = 0
  }):assert(selectedColor >=0 && selectedColor <= _colorThemes.length-1,'Colors must be between  and ${_colorThemes.length}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}