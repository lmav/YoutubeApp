import 'package:flutter/material.dart';
import '../sections/home.dart';
import './top_nav.dart';

class HomeLayout extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeLayout> {
  double _size = 22.5;
  double _textSize = 12.9;
  Color _topNavColor = Colors.black54;

  int _selectedPage = 0;

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  Widget build(BuildContext context) {
    final _pageOptions = [
      Home(),
      Text('Trending'),
      Text('Subscriptions'),
      Text('Inbox'),
      Text('Library')
    ];

    Color _barColor = Colors.white; //Color(0xFFf05f40);

    /* add the user to the db if he doesnt exist
    *  here we will try to return the user object if he doesnt exist
    * we will create one.
    */

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
              width: 85.0,
              height: 85.0,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'lmav',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              )),
          actions: <Widget>[
            TopNav(Icons.videocam, _topNavColor),
            TopNav(Icons.search, _topNavColor),
            TopNav(Icons.account_circle, _topNavColor),
          ],
          backgroundColor: _barColor,
        ),
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFFF0000),
          backgroundColor: Colors.white,
          currentIndex: _selectedPage,
          onTap: (int index) async {
            setState(() {
              _selectedPage = index;
            });
            print(_selectedPage);
          },
          //fixedColor: Colors.orange,
          items: [
            BottomNavigationBarItem(
              title: Text(
                "Home",
                style: TextStyle(fontSize: _textSize),
              ),
              icon: Icon(Icons.home, size: _size),
            ),
            BottomNavigationBarItem(
              title: Text(
                "Trending",
                style: TextStyle(fontSize: _textSize),
              ),
              icon: Icon(Icons.whatshot, size: _size),
            ),
            BottomNavigationBarItem(
                title: Text(
                  "Subscription",
                  style: TextStyle(fontSize: _textSize),
                ),
                //icon:Column( children: <Widget>[  Icon(Icons.call_received),Icon(FontAwesomeIcons.shoppingBag, size: size), ],),
                icon: Icon(Icons.subscriptions) //CartIcon(size),
                ),
            BottomNavigationBarItem(
                title: Text(
                  "Inbox",
                  style: TextStyle(fontSize: _textSize),
                ),
                icon: Icon(Icons
                    .mail) //Icon(FontAwesomeIcons.shoppingBag, size: size),
                ),
            BottomNavigationBarItem(
              title: Text(
                "Library",
                style: TextStyle(fontSize: _textSize),
              ),
              icon: Icon(Icons.folder, size: _size),
            ),
          ],
        ),
      ),
    );
  }
}
