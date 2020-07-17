import 'package:flutter/material.dart';
import 'package:movieratingsapp/widgets/appBar.dart';
 class ErrorPage extends StatefulWidget {
   @override
   _ErrorPageState createState() => _ErrorPageState();
 }

 class _ErrorPageState extends State<ErrorPage> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:MyAppBar(height: 100.0,),
       body: Center(child: Text("Movie Not Found, Please check the name once again",textAlign: TextAlign.center,
       style: Theme.of(context).textTheme.headline6.copyWith(shadows: []),),),
     );
   }
 }
