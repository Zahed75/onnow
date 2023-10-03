import 'package:flutter/material.dart';

TextStyle HeadLine(context) {
  var width = MediaQuery.of(context).size.width;

  if (width < 700) {
    //Mobile devices
    return TextStyle(
      color: Colors.orange
      fontSize: 34,
      );
  } else {
    //Desktop devices
    return TextStyle(
      color: Colors.orange, 
    fontSize: 65,
    );
  }
}
