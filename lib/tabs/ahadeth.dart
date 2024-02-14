import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:eslami/tabs/ahadeth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AhadethTab extends StatelessWidget {
  const AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
            child: Image.asset(AppAssets.AhadethTab)),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              Container(
                height: 3,
                width: double.infinity,
                color: AppColors.brown,
              ),
          Text("الأحاديث",
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,),textAlign: TextAlign.center),
              Container(
                height: 3,
                width: double.infinity,
                color: AppColors.brown,
              ),
          Expanded(
            flex: 7,
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: EdgeInsets.only(top:10),
                      child: Row(
                        children: [
                          Expanded(child: Text(" الحديث رقم ${index+1} ",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),
                        ],
                      ),
                    ),
                  );
                }
            )
          )],
          ),
        )
      ],
    );
  }
}
