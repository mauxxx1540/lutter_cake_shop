import 'package:flutter/material.dart';
import 'package:flutter_cake_shop/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
 
//---------------------------------------
void main() {
  runApp(
    FlutterCakeShopApp(),
  );
}
 
//---------------------------------------
class FlutterCakeShopApp extends StatefulWidget {
  const FlutterCakeShopApp({super.key});
 
  @override
  State<FlutterCakeShopApp> createState() => _FlutterCakeShopAppState();
}
 
class _FlutterCakeShopAppState extends State<FlutterCakeShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansThaiTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
