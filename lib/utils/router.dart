import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieratingsapp/screens/ErrorPage.dart';
import 'package:movieratingsapp/screens/home.dart';
import 'package:movieratingsapp/screens/results.dart';
import 'package:movieratingsapp/screens/search.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    final args=settings.arguments;
    switch(settings.name)
    {
      case '/':return MaterialPageRoute(builder: (_)=>MyHomePage());
      break;
      case '/search':return MaterialPageRoute(builder: (_)=>SearchPage());
      break;
      case '/results':
        return MaterialPageRoute(builder: (_)=>Results(args,));
      break;
      case '/error':
        return MaterialPageRoute(builder: (_)=>ErrorPage());
        break;
    }
  }
}