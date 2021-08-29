import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animate_do_app/screens/Screens.dart';
import 'package:animate_do_app/providers/providers.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavegacionProvider()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Animate_do_App',
        home: Pagina1Page());
  }
}
