import 'package:flutter/material.dart';
import 'package:flutter_web_aula/responsividade_media_query.dart';
import 'package:flutter_web_aula/responsividade_row_col.dart';

void main() {
  runApp(const MaterialApp(
    title: "Flutter Web",
    debugShowCheckedModeBanner: false,
    // home: ResponsividadeMediaQuery(),
    home: ResponsividadeRowCol(),
  ));
}
