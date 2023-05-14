import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/bloc/suggestions_popup/suggestions_popup_cubit.dart';
import 'package:flutter_application_1/ui/screens/main_screen.dart';
import 'package:flutter_application_1/ui/theme/app_theme.dart';
import 'bloc/suggestion_cities/suggestion_cities_cubit.dart';
import 'bloc/weather_info/weather_info_cubit.dart';

void main() {
  runApp( MyApp2());
}
class MyApp2 extends StatefulWidget {
  //MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
    late final WeatherCubit _weatherCubit;
    
     @override
  void initState() {
    super.initState();
    _weatherCubit = WeatherCubit()..getWeatherByName('udupi');
  }

  @override
  void dispose() {
    _weatherCubit.close();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {

    
     return MultiProvider(
      providers: [
        Provider.value(value: _weatherCubit),
        Provider<SuggestionsCubit>(
          create: (context) => SuggestionsCubit(),
        ),
        Provider<CitySuggestionCubit>(
          create: (context) => CitySuggestionCubit(),
        )
      ],
      child: MaterialApp(
        theme: AppTheme.dark,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => MainScreen(),
        },
      ),
    );
    }
  }

