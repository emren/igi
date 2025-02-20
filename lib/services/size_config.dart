import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig{
  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizontal;
  static double _blockSizeVertical;

  static double textMultiplier;
  static double imagesSizeMultiplier;
  static double heightMultiplier;
  static double widthMultiplier;

  double _iphone_11_height = 8.96;
  double _iphone_11_width = 4.14;

  void init(BoxConstraints constraints, Orientation orientation){
    if(orientation == Orientation.portrait){
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imagesSizeMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;
    widthMultiplier = _blockSizeHorizontal;

    print('height: ' + _blockSizeVertical.toString());
    print('width: ' + _blockSizeHorizontal.toString());
  }

  double height(double h){
    return (h/_iphone_11_height)*_blockSizeVertical;
  }
  double width(double w){
    return (w/_iphone_11_width)*_blockSizeHorizontal;
  }
  double font(double f){
    return (f/_iphone_11_height)*_blockSizeVertical;
  }
}