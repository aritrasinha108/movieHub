import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieratingsapp/widgets/appBar.dart';
import 'package:movieratingsapp/widgets/resultText.dart';

class Results extends StatefulWidget {
  var details;

  Results(this.details);

  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    var details = widget.details;
    print("The details are:");
    print(details);
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          height: 200,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          details['Poster'],
                        ),
                        fit: BoxFit.fill))),
            SizedBox(height: 20.0),
            textResult("Title: ", details['Title'], context),
            SizedBox(height: 20.0),
            textResult("Release Date: ", details['Released'], context),
            SizedBox(height: 20.0),
            textResult("Rated: ", details['Rated'], context),
            SizedBox(height: 20.0),
            textResult("Runtime: ", details['Runtime'], context),
            SizedBox(height: 20.0),
            textResult("Genre: ", details['Genre'], context),
            SizedBox(height: 20.0),
            textResult("Directed by: ", details['Director'], context),
            SizedBox(height: 20.0),
            textResult("Written by: ", details['Writer'], context),
            SizedBox(height: 20.0),
            textResult("Cast: ", details['Actors'], context),
            SizedBox(height: 20.0),
            textResult("Country: ", details['Country'], context),
            SizedBox(height: 20.0),
            textResult("Awards: ", details['Awards'], context),
            SizedBox(height: 20.0),
            Text(
              "Ratings",
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.headline1.copyWith(shadows: []),
            ),
            SizedBox(height: 10.0),
            textResult("IMDB Rating: ", details['imdbRating'], context),
            SizedBox(
              height: 30.0,
            ),
            textResult('IMDB Votes: ', details['imdbVotes'], context),
            SizedBox(
              height: 30.0,
            ),
            textResult('Meta Critic: ', details['Metascore'], context),
            SizedBox(height: 30.0),
            textResult("Box Office: ", details['BoxOffice'], context),
            SizedBox(height: 20.0),
            textResult("Plot: ", details['Plot'], context),
          ],
        ),
      ),
    );
  }
}
