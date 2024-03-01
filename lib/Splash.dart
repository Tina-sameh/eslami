import 'package:eslami/Home.dart';
import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  static String routeName="Spalsh";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:AppColors.primary,
      body:Column(
        children: [
          Spacer(flex: 4,),
          Center(
            child:
              Image.asset(AppAssets.splash),
          ),
          Spacer(flex: 3,),
          Container(
            width:double.infinity,
            height:140,
            child:Image.asset(AppAssets.route,),
          )
        ],
      ),
    );
  }
}

