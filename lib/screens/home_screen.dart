import 'package:pose_estimation/main.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:camera/camera.dart';
import 'info.dart';
import 'profile/profile.dart';
import '../main_screen.dart';
import 'package:pose_estimation/screens/workout/workouts.dart';
class HomeScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  HomeScreen(this.cameras);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MainScreen(camera),
    const WorkOutPage(),
    AboutMePage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //backgroundColor: Color(0xffF7F8F8),
            backgroundColor: Colors.blue,
            icon: Icon(LineAwesomeIcons.universal_access),
            label: 'Align',
          ),
          BottomNavigationBarItem(
            //backgroundColor: Color(0xffF7F8F8),
            backgroundColor: Colors.blue,
            icon: Icon(LineAwesomeIcons.burn),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(LineAwesomeIcons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
           // backgroundColor: Color(0xffF7F8F8),
            backgroundColor: Colors.blue,
            icon: Icon(LineAwesomeIcons.user),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xFFFE7C7C),
        iconSize: 36.0,
        elevation: 0.0,
        onTap: _onItemTapped,
      ),
    );
  }
}
