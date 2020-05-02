import 'package:disenos_app/src/pages/basico_page.dart';
import 'package:disenos_app/src/pages/botones_page.dart';
import 'package:disenos_app/src/pages/scroll_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white) );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Diseños ',
      initialRoute: 'page',
      routes: {
        'basico' : (BuildContext contex) => BasicoPage(),
        'scroll' : (BuildContext contex) => ScrollPages(),
        'page'   : (BuildContext contex) => BotonesPage(),

      },

    );
  }
}