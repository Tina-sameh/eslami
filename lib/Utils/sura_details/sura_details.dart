import 'package:eslami/Screen.dart';
import 'package:eslami/Utils/app_assets.dart';
import 'package:eslami/Utils/app_colors.dart';
import 'package:eslami/model/sura_details_arguments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura";
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String fileContent="";

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArg;
    if(fileContent.isEmpty){
    read(args.fileName);}
    return BasicScreen(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.07,horizontal:28),
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Text(fileContent,
            textDirection: TextDirection.rtl,
            style:TextStyle(fontSize: 25,
            fontWeight:FontWeight.bold,
          ) ,textAlign: TextAlign.center,),
        ),
      ),
    );
  }

  void read(String fileName) async {
    Future<String> futureFileContent = rootBundle.loadString(
        "assets/files/quran/${fileName}");
     fileContent = await futureFileContent;
    print("$fileContent");

    List<String> fileLines=fileContent.split("\n");
     for(int i=0;i<fileLines.length;i++){
       fileLines[i] += "{${i+1}}";
       print("$i \n");
     }
     fileContent=fileLines.join(" ");
     setState(() {
     });
  }
}