import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieratingsapp/screens/ErrorPage.dart';

getMovieDetails(String title) async
{
  var url = 'http://www.omdbapi.com/?apikey=61d72f0a&t=$title&plot=full';

  http.Response response = await http.get(url);
  Map details = jsonDecode(response.body);
  if(details["Response"]=="False")
    return null;

    return details;



}