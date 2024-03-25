import 'package:alpha/screenSize.dart';
import 'package:alpha/screens/home/homeScreen.dart';
import 'package:alpha/screens/learn/learnScreen.dart';
import 'package:alpha/screens/profile/profileScreen.dart';
import 'package:alpha/screens/campaigns/campaignsScreen.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.updateScreenSize(context);
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const SafeArea(child: Navigation()),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Nova",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, size: 40, color: Colors.white))
        ],
        backgroundColor: Color.fromARGB(255, 47, 47, 47),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 179, 179, 179),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.campaign),
            label: 'Campaigns',
          ),
          NavigationDestination(
            icon: Icon(Icons.lightbulb),
            label: 'Learn',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        SearchScreen(),
        LearnScreen(),
        ProfileScreen(),
      ][currentPageIndex],
    );
  }
}
