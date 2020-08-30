import 'package:flutter/material.dart';
import 'package:gdg_2020/Screens/TeamScreen.dart';

import 'Screens/HomePage.dart';
import 'Screens/speakerScreen.dart';

void main()
{
  runApp(MaterialApp(
    title: "GDG Devfest'20",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'OpenSans',
      appBarTheme: AppBarTheme(color: Colors.white),
    ),
    initialRoute: '/Speaker',
    routes: {
      '/':(context)=>Homepage(),
      '/Speaker':(context)=>SpeakerScreen(),
      '/Teams':(context)=>TeamScreen(),
    },
  ));
}