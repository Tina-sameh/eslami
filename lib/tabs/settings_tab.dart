import 'package:eslami/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Utils/App_Localization_Utils.dart';
import '../providers/lang_provider.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool lang=false;
String select="en";
   bool dark=false;
  late LangProvider langLocal;
  @override
  Widget build(BuildContext context) {
     langLocal=Provider.of(context);
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(context.getLocal().settings,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
          DropdownButton<String>(
              value: select,
              items: [
                DropdownMenuItem(value: "en" ,child: Text("English")),
                DropdownMenuItem(value: "ar" ,child: Text("العربية"))
              ],
              isExpanded: true,
              onChanged: (newValue){
                select=newValue!;
                langLocal.setLang(select);
                setState(() {
                });
              }),

           SizedBox(height: 10,),
           buildRow(title:context.getLocal().darkMode,Value:dark,Onchanged: (newValue){
             dark=newValue;
             setState(() {

             });
           }),
        ],
      ),
    );
  }

  Widget buildRow({required String title,required bool Value,required Function(bool) Onchanged}) {
    return
       Row(
          children: [
            Text(title,style: TextStyle(fontSize: 20),),
            Spacer(),
            Switch(value: Value, onChanged: Onchanged,activeColor:AppColors.brown,)
          ],

    );
  }
}
