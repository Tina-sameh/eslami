import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


extension AppLocalizationsUtils on BuildContext{
  AppLocalizations getLocal(){
    return AppLocalizations.of(this)!;
  }
}