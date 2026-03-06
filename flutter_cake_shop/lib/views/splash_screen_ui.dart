import 'package:flutter/material.dart';
import 'package:flutter_cake_shop/views/cake_shop_list_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CakeShopListUi(),
          ),
        );
      }
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.deepOrange
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_welcome.png"),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              Text(
                'สายด่วนกินเค้ก',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                )
              ),
              SizedBox(height: 20,),
              Text(
                'CAKE CALL FAST',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[300],
                )
              ),
              SizedBox(height: 20,),
              CircularProgressIndicator(
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}