import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:store_app/screens/home_screen.dart';


import 'constants.dart';
    void main()
    {

      runApp(MaterialApp(

        theme: ThemeData(

          primaryColor: kPrimaryColor,
          accentColor: kPrimaryColor


        ),

        title: 'electronic store',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('ar', 'AE'), // English, no country code
          // Spanish, no country code
        ],





        debugShowCheckedModeBanner: false,
        home: HomeScreen(),

      ));


    }