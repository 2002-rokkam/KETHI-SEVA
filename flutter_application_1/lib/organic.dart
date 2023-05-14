import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'classes/language.dart';
import 'classes/language_constants.dart';

//void main() {
  //runApp(const MyFlipCard());
//}

class MyFlipCard extends StatefulWidget {
const MyFlipCard({Key? key}) : super(key: key);

@override
State<MyFlipCard> createState() => _MyFlipCardState();


 static void setLocale(BuildContext context, Locale newLocale) {
     _MyFlipCardState? state = context.findAncestorStateOfType< _MyFlipCardState>();
    state?.setLocale(newLocale);
  }
}

class _MyFlipCardState extends State<MyFlipCard> {
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
   final GlobalKey<FormState> _key = GlobalKey<FormState>();

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

@override
Widget build(BuildContext context) {
	
	 return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      //onGenerateRoute: CustomRouter.generatedRoute,
      //initialRoute: homeRoute,
      locale: _locale,
    
  
 home: Scaffold(
  appBar: AppBar(
        title: Text(translation(context).homePage),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode as Locale);
                 // MyFlipCard.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 30),
                          ),
                          Text(e.name)
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
     
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: _mainForm(context),
      ),
    ),
   );
}

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Center(
              child: Text(
                translation(context).crp,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return translation(context).requiredField;
              }
              return null;
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: translation(context).name,
              hintText: translation(context).nameHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (val) {
              if (val != null && val.isEmpty) {
                return translation(context).requiredField;
              }
              return null;
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: translation(context).email,
              hintText: translation(context).emailHint,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: translation(context).dateOfBirth,
            ),
            onTap: () async {
              FocusScope.of(context).requestFocus(FocusNode());
              await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(DateTime.now().year),
                lastDate: DateTime(DateTime.now().year + 20),
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              if (_key.currentState != null && _key.currentState!.validate()) {
                _showSuccessDialog();
              }
            },
            height: 50,
            shape: const StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text(
                translation(context).submitInfo,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }


}

