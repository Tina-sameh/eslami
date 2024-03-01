import 'package:eslami/Screen.dart';
import 'package:eslami/Utils/App_Localization_Utils.dart';
import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/tabs/ahadeth.dart';
import 'package:eslami/tabs/quran.dart';
import 'package:eslami/tabs/radio.dart';
import 'package:eslami/tabs/sebha.dart';
import 'package:eslami/tabs/settings_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatefulWidget {
  static String routeName = "home";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current = 0;

Widget currentTab=QuranTab();

  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      title:context.getLocal().suraName,
      bottomNavigation:  buildBottomNavigationBar ,
       body:currentTab ,
    );
  }

  Widget get buildBottomNavigationBar => Theme(
        data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
        child: BottomNavigationBar(
            currentIndex: current,
            onTap: (index) {
              current = index;
              if(current==0){
                currentTab=QuranTab();
              }else    if(current==1){
                currentTab=AhadethTab();
              }else    if(current==2){
                currentTab=SebhaTab();
              }else    if(current==3){
                currentTab=RadioTab();
              }else    if(current==4){
                currentTab=Settings();
              }
              setState(() {});
            },
            items: [
              buildBottomNavigationBarItem(imagePath:AppAssets.icQuran, AppLocalizations.of(context)!.quran),
              buildBottomNavigationBarItem(imagePath:AppAssets.icAhadeth, AppLocalizations.of(context)!.ahadeth),
              buildBottomNavigationBarItem(imagePath:AppAssets.icSeb7a, AppLocalizations.of(context)!.tasbeeh),
              buildBottomNavigationBarItem(imagePath:AppAssets.icRadio, AppLocalizations.of(context)!.radio),
              buildBottomNavigationBarItem( iconData: Icons.settings_rounded,AppLocalizations.of(context)!.settings),
            ]),
      );

  BottomNavigationBarItem buildBottomNavigationBarItem(
    String label,
      {String? imagePath, IconData? iconData}
  ) =>
      BottomNavigationBarItem(
          icon: imagePath != null
              ? ImageIcon(
            AssetImage(imagePath),
            size: 32,
          )
              : Icon(iconData!),
          label: label);
}
