import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/custom_router.dart';
import 'package:flutter_application_1/router/route_constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'classes/language.dart';
import 'classes/language_constants.dart';

void main() {
  runApp(const tips());
}

class tips extends StatefulWidget {
const tips({Key? key}) : super(key: key);

@override
State<tips> createState() => _tipsState();


 static void setLocale(BuildContext context, Locale newLocale) {
     _tipsState? state = context.findAncestorStateOfType< _tipsState>();
    state?.setLocale(newLocale);
  }
}

class _tipsState extends State<tips> {
   Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }
 

@override
Widget build(BuildContext context) {
	
	 return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: homeRoute,
      locale: _locale,
    
   );
}
}

 