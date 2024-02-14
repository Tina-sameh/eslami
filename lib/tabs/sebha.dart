import 'package:eslami/Utils/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double rotate=0;
  int count=0;
  int i=0 ;
  List<String> tasbeh=["الحمدلله","سبحان الله","لا اله الا الله","الله اكبر"];
  void rotating(){
    setState(() {
      rotate+=.5;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(flex: 2,),
        GestureDetector(
          onTap: (){
            count++;
            rotating();
            if(count%34==0){
              i++;
            }
            if(i==4){
              i=0;
            }
          },
                      child: Transform.rotate(
                        angle:rotate*(3.14/180),
                          child: Center(child: Image.asset(AppAssets.Seb7a,))
                      )),
        Spacer(flex: 1,),
        Center(
              child: Text('عدد التسبيحات',style: TextStyle(fontSize: 30),)),
        Spacer(flex: 1,),
        Container(
           height: 75,
           width: 60,
           decoration: BoxDecoration(

             color:Color(0xffc8b496),
             borderRadius: BorderRadius.circular(20),
           ),
            child: Center(child: Text("$count",style: TextStyle(fontSize:20),)),
                 ),

        Spacer(flex: 1,),
Container(
  height: 50,
  width: 140,
  decoration: BoxDecoration(
      color: Color(0xffb6925e),
      borderRadius: BorderRadius.circular(25)
  ),
  child: Center(child: Text("${tasbeh[i]}",style: TextStyle(fontSize: 23,color:Colors.white,),)),
),
        Spacer(flex: 2,),

      ],
    );
  }
}
