import 'package:eslami/Utils/App_Localization_Utils.dart';
import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  final String title;
  final Widget? bottomNavigation;
  final Widget body;
  BasicScreen({super.key, required this.body,
    this.bottomNavigation,
  required this.title
  });

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
          title: Text(context.getLocal().islami,
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
