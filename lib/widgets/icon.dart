import 'package:flutter/material.dart';

Widget iconWidget(double fsize, double radius, double padding,BuildContext context) {
  return CircleAvatar(
    backgroundImage: AssetImage('assets/index.jpeg'),
    radius: radius,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'MovieHub',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6.copyWith(fontSize: fsize,color: Colors.black,shadows: [],fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
