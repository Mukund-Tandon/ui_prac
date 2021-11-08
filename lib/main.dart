import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ui_prac/Screens/homepage.dart';
import 'package:ui_prac/models/drwer_animation_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => drawer_animation_data(),
      child: MaterialApp(
          home: Homepage()),
    );

  }
}

