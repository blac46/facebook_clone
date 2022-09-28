
import 'package:facebook_ui/screens/feedsScreen.dart';
import 'package:facebook_ui/screens/home_screen.dart';
import 'package:facebook_ui/screens/market_screen.dart';
import 'package:facebook_ui/screens/menu_Screen.dart';
import 'package:facebook_ui/screens/notificationScreen.dart';
import 'package:facebook_ui/screens/watchScreen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex  = 0;
  List pages=[
  HomeScreen(),
   WatchScreen(),
   MarketPlaceScreen(),
   FeedsScreen(),
   NotificationScreen(),
   MenuScreen(),
  ];

  void _onTap(int selectedItem){
    setState(() {
      currentindex = selectedItem;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[
          currentindex
        ],
            bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: currentindex,
              selectedItemColor: Color(0xff385899),
              unselectedItemColor: Colors.grey,
              onTap: _onTap,
              items:const [
                BottomNavigationBarItem(
                  label: 'Home',
                    icon: Icon(Icons.home)
                ),
                BottomNavigationBarItem(
                    label: 'Watch',
                    icon: Icon(Icons.music_video),
                    ),
                
                BottomNavigationBarItem(
                    label: 'MarketPlace',
                    icon: Icon(Icons.store)
                ),
                BottomNavigationBarItem(
                    label: 'Feeds',
                    icon: Icon(Icons.feed)
                ),
                BottomNavigationBarItem(
                    label: 'Notification',
                    icon: Icon(Icons.notifications)
                ),
                BottomNavigationBarItem(
                    label: 'Menu',
                    icon: Icon(Icons.menu)
                ),
              ],
            ) ,
      ),
    );
  }
}
