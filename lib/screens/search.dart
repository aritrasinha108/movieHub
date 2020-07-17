import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieratingsapp/widgets/appBar.dart';
import 'package:movieratingsapp/widgets/searchBar.dart';
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller=TextEditingController();
  int _currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(height: 100.0),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 12.0,
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.black.withOpacity(0.5),
          currentIndex: _currentIndex,
          selectedFontSize: 18.0,
          unselectedFontSize: 12.0,
          selectedIconTheme: IconThemeData(
            color: Colors.amber[300],

          ),
          onTap: (int index){

            setState(() {
              _currentIndex=index;
            });
            switch(index)
            {
              case 0:Navigator.of(context).pushNamed('/');
                break;
              case 1:break;
              default:break;
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              title: Text('Watch List'),
            ),
          ],
        ),

        body: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(1.0, 160.0, 1.0, 60.0),
              child: Text(

                  "Search for movies you want to know about..",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,),
            ),

            SearchBar(context, _controller)

          ],
        ),
      ),
    );

  }
}
