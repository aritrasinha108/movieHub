import 'package:flutter/material.dart';

Widget textResult(String Title, String details, BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,

   child:Column(
      children: <Widget>[
        Text(
          Title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.amber, shadows: []),
        ),
        Text(
          details,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline6.copyWith(shadows: []),
        ),
      ],
    ),
  );
}
