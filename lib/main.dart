import 'package:flutter/material.dart';
import 'package:demo/pages/home.dart';
import 'package:demo/pages/map_ui.dart';
import 'package:demo/pages/messages.dart';
import 'package:demo/pages/notifications.dart';
import 'package:demo/pages/my_profile.dart';

/*
To do:
 - Navigation page:
    - Add list view
    - Copy Meetup
 - Profile page
    - Copy from ig (later implement user data)
 - Home Page
    - Story view, start a new group, list of events
    - Work with user data

Issues:
 - Are we sticking with the '/' routing convention or the one from NavigatorBar
*/

void main() => runApp(MaterialApp(
  //initialRoute: '/home', // first thing that runs; replace with loading
  routes: { // so are we using routing?
    // '/': (context) => Loading() // when adding loading page
    '/home': (context) => Home(),
    '/map_ui': (context) => MapUI(),
    '/messages': (context) => Messages(),
    '/notifications': (context) => Notifications(),
    '/my_profile': (context) => MyProfile()
  },
  home: BotNavBar()
));

// create bottom navigation bar here
class BotNavBar extends StatefulWidget {
  const BotNavBar({ Key? key }) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {

  int currentIndex = 0; // which icon clicked on navigation bar
  final List<Widget> screenPages = [ // fix to routing later
    Home(),
    MapUI(),
    Notifications(),
    MyProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        // when tapped, save to currentIndex
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red[400],
        iconSize: 25,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box
            ),
            label: 'My Profile',
          )
        ],
      ),
    );
  }
}
