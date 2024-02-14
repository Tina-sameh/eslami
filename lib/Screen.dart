import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final Widget? bottomNavigation;
  final Widget body;
  BasicScreen({required this.body,
     this.bottomNavigation});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.background))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          title: Text("اسلامى",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              )),
          centerTitle: true,
        ),
        bottomNavigationBar:  bottomNavigation ,
        body: body,
      ),
    );
  }

}
