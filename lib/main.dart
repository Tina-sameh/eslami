
import 'package:eslami/Home.dart';
import 'package:eslami/Splash.dart';
import 'package:eslami/providers/lang_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'model/hadeth_details/ahadeth_details.dart';
import 'model/sura_details/sura_details.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create:(context)=>LangProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LangProvider langLocal=Provider.of(context);

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("en"),Locale("ar")],
      locale: Locale(langLocal.currentLocal),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      routes: {
        Splash.routeName:(_)=>Splash(),
        Home.routeName:(_)=>Home(),
        SuraDetails.routeName:(_)=>SuraDetails(),
        HadethDetails.routeName:(_)=>HadethDetails(),
      },
      initialRoute:Splash.routeName ,
    );
  }
}
