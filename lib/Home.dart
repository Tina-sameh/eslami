import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:eslami/tabs/ahadeth.dart';
import 'package:eslami/tabs/quran.dart';
import 'package:eslami/tabs/radio.dart';
import 'package:eslami/tabs/sebha.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static String routeName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current = 3;

Widget currentTab=QuranTab();

  @override
  Widget build(BuildContext context) {
    return Container(
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
        bottomNavigationBar:  buildBottomNavigationBar() ,
       body:currentTab ,
      ),
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: AppColors.brown),
        child: BottomNavigationBar(
            selectedItemColor: AppColors.black,
            currentIndex: current,
            onTap: (index) {
              current = index;
              if(current==0){
                currentTab=RadioTab();
              }else    if(current==1){
                currentTab=SebhaTab();
              }else    if(current==2){
                currentTab=AhadethTab();
              }else    if(current==3){
                currentTab=QuranTab();
              }
              setState(() {});
            },
            items: [
              buildBottomNavigationBarItem(AppAssets.icRadio, "راديو"),
              buildBottomNavigationBarItem(AppAssets.icSeb7a, "التسبيح"),
              buildBottomNavigationBarItem(AppAssets.icAhadeth, "احاديث"),
              buildBottomNavigationBarItem(AppAssets.icQuran, "القرأن"),
            ]),
      );

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String ImagePath,
    String label,
  ) =>
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(ImagePath), size: 45),
        label: label,
      );
}
