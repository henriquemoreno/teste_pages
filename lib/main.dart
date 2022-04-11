import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:teste_pages/pages/NoFile.dart';
import 'package:teste_pages/pages/Payment.dart';
import 'package:teste_pages/pages/form_feedback.dart';
import 'package:teste_pages/pages/form_page.dart';
import 'package:teste_pages/pages/form_personal_information.dart';
import 'package:teste_pages/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            bodyText2:
                TextStyle(color: const Color(0xFF344B67).withOpacity(0.7))),
      ),
      home: const HomePage(),
    );
  }
}
