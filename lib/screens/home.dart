import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;
import 'package:movieratingsapp/widgets/appBar.dart';
import 'package:movieratingsapp/widgets/icon.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> animation;
  int _currentIndex=0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween<double>(
      begin: -math.pi/6,
      end: math.pi/6,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
      reverseCurve: Curves.bounceIn
    ))
      ..addListener(() {
        // Empty setState because the updated value is already in the animation field
        setState(() {});
      })
      ..addStatusListener((status) {

       if(status==AnimationStatus.completed)
         {
           _animationController.reverse();
         }
        else if (status == AnimationStatus.dismissed) {
          _animationController.forward();

        }
      });

    _animationController.forward(from: 0.5);
  }

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
              switch(index)
              {
                case 0:
                break;
              case 1:Navigator.of(context).pushNamed('/search');
                break;
                default: break;
              }
            });
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
        body: ListView(
          children: <Widget>[
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 5.0),
                child: Text(
                  "Welcome to the ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),

           Transform.rotate(angle: animation.value,
               child: iconWidget(33.0, 175.0, 12.0, context)),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 3.0),
                child: Text(
                    "Considered to be one of the best sites about the trivia, rating and the reviews of movies and series. The MovieHub platoform has everything that you need to know about any movie you want. All you need to do is hang in here for sometime.....  ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
