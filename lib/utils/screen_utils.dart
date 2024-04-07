import 'package:flutter/cupertino.dart';

class ScreenUtils{
 static dynamic myHeight(BuildContext context){
    return MediaQuery.of(context).size.height; 
  }

  static dynamic myWidth(BuildContext context){
    return MediaQuery.of(context).size.width; 
  }
  }