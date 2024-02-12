import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:eslami/Utils/constants.dart';
import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

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
             children: [
               buildScreen(),
               Center(
                   child: VerticalDivider(thickness: 3,color: AppColors.brown,))
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
                  child: Text("عدد الايات ",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,),textAlign: TextAlign.center),),
                Expanded(
                  child: Text("اسم السورة",
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
                        child: Row(
                          children: [
                            Expanded(child: Text("${Constants.versesNumber[index]}",
                              style: TextStyle(fontSize: 30,fontWeight:FontWeight.normal),textAlign: TextAlign.center,)),
                            Expanded(child: Text(Constants.suraNames[index],
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.normal),textAlign: TextAlign.center,)),
                          ],
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
