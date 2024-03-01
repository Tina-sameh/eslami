import 'package:eslami/Screen.dart';
import 'package:eslami/model/screen_details_arguments.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "hadeth";
  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<HadethDetails> {
  String fileContent="";

  @override
  Widget build(BuildContext context) {
    ScreenDetailsArg args = ModalRoute.of(context)!.settings.arguments as ScreenDetailsArg;
    if(fileContent.isEmpty){
      read(args.fileName);}
    return BasicScreen(
      title: args.Name,
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
        "assets/files/ahadeth/${fileName}");
    fileContent = await futureFileContent;
    setState(() {
    });
  }
}