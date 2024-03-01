
import 'package:eslami/Utils/App_Localization_Utils.dart';
import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:eslami/Utils/constants.dart';
import 'package:eslami/model/screen_details_arguments.dart';
import 'package:flutter/material.dart';

import '../model/sura_details/sura_details.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Image.asset(AppAssets.quranTab)),
         Expanded(
           flex: 7,
           child: Stack(
             alignment: Alignment.center,
             children: [
               buildScreen(),
               Container(
                 width:3,
                   height: double.infinity,
                   color: AppColors.brown,)
             ],
           ),
         ),

      ],
    );
  }

  Expanded buildScreen() {
    return Expanded(
        child: Column(
          children: [
            Container(
              height: 3,
              width:double.infinity,
              color: AppColors.brown,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(context.getLocal().verse,
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,),
                      textAlign: TextAlign.center),),
                Expanded(
                  child: Text(context.getLocal().suraName,
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30),textAlign: TextAlign.center),),

              ],
            ),
            Container(
              height: 3,
              width:double.infinity,
              color: AppColors.brown,
            ),
            Expanded(
                flex: 7,
                child: ListView.builder(
                    itemCount:Constants.suraNames.length ,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: EdgeInsets.only(top:10),
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, SuraDetails.routeName,
                                arguments:ScreenDetailsArg(fileName: "${index+1}.txt",Name: Constants.suraNames[index]) );
                          },
                          child: Row(
                            children: [
                              Expanded(child: Text("${Constants.versesNumber[index]}",
                                style: TextStyle(fontSize: 30,fontWeight:FontWeight.normal),textAlign: TextAlign.center,)),
                              Expanded(child: Text(Constants.suraNames[index],
                                style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)),
                            ],
                          ),
                        ),
                      );
                    }
                )
            )
          ],
        ),
      );
  }
}
