import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieratingsapp/widgets/icon.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  double height;
  MyAppBar({Key key, this.height})
      : super(key: key); //Taking height  as argument



  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Colors.black.withOpacity(0.5),
        border: Border(bottom:BorderSide(color:Theme.of(context).accentColor.withOpacity(0.7),style: BorderStyle.solid,width: 2.0)),

        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          iconWidget(5.0, 38.0, 12.0, context),
          Text('MovieHub',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1.copyWith(fontSize: 38.0),),
          SizedBox(height: MediaQuery.of(context).size.width*0.2),

        ],
      ),


    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(height); //Used by the appbar for height
}

