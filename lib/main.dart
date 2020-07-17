import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieratingsapp/screens/results.dart';
import 'package:movieratingsapp/screens/search.dart';
import 'package:movieratingsapp/utils/router.dart';
import 'screens/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background1.jpg'),
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
              fit: BoxFit.fill
          )
      ),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.teal[200],
          accentColor: Colors.white,
          fontFamily: 'RobotoSlab',
          scaffoldBackgroundColor:Colors.transparent,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 55.0,
              fontFamily: 'RobotoSlab',
              fontWeight: FontWeight.bold,
              color: Colors.amber[300],

              letterSpacing: 2.0,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(3.0, 2.0),
                  blurRadius: 1.0,
                  color: Colors.white
                  ,
                ),
                Shadow(
                  offset: Offset(2.0, 3.0),
                  blurRadius: 2.0,
                  color: Colors.black12,
                ),
              ],),
            headline6: TextStyle(
              fontSize: 26.0,
              fontFamily: 'RobotoSlab',

              color: Colors.white,

              letterSpacing: 4.0,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 1.0,
                  color: Colors.teal[900],
                ),
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 1.0,
                  color: Colors.black12,
                ),
              ],),
            headline3: TextStyle(
              fontSize: 46.0,
              fontFamily: 'RobotoSlab',
              fontWeight: FontWeight.bold,
              color: Colors.white,

              letterSpacing: 3.0,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 2.0,
                  color: Colors.teal[900],
                ),
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 2.0,
                  color: Colors.black12,
                ),
              ],),
          )

        ),

  debugShowCheckedModeBanner: false,
        initialRoute: '/',

        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
