import 'package:flutter/material.dart';

const Color _customColor = Color( 0xFF49149F );

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.cyanAccent,
  Colors.purple
];


class AppTheme {

  final int selectColor;

AppTheme({this.selectColor = 0})
  : assert( selectColor >= 0 && selectColor < _colorThemes.length, 
    'Colors must be between 0 and ${_colorThemes.length}' );
  // assert(selectColor <= 5, );


  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectColor]
    );
  }
}
