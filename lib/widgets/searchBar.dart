import 'package:flutter/material.dart';
import 'package:movieratingsapp/utils/getDetails.dart';


Widget SearchBar(BuildContext context,TextEditingController _controller)
{
   return Row(

    children: <Widget>[

      Container(
        width: MediaQuery.of(context).size.width *0.7,
        child: TextField(

          controller: _controller,
          maxLines: 1,
          style:Theme.of(context).textTheme.headline6.copyWith(shadows: []),
          decoration: InputDecoration(
              labelText: "Search for movies",
              fillColor: Theme.of(context).primaryColor.withOpacity(0.3),
              labelStyle: Theme.of(context).textTheme.headline6.copyWith(color: Colors.amber[300],shadows: [],fontSize: 14.0),
              focusColor: Colors.grey.withOpacity(0.4),
              border:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal[200],width: 3.0))
          ),


        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.04,),
      ButtonTheme(
        minWidth: MediaQuery.of(context).size.width *0.2,
        height: 60.0,
        child: RaisedButton(onPressed: () async{
          var details=await getMovieDetails(_controller.text);
          print(details);
          if(details!=null)
          Navigator.of(context).pushNamed('/results',arguments: details);
          else
            Navigator.of(context).pushNamed('/error');
        }, child: Icon(Icons.search,
          color: Colors.teal,size: 40.0,),color: Colors.amber[300],elevation: 12.0,),
      )
    ],
  );
}
