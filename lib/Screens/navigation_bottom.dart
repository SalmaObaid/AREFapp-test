import 'package:arefapp/Screens/account_screen.dart';
import 'package:arefapp/Screens/challange_obtions.dart';
import 'package:arefapp/Screens/course_list_screen.dart';
import 'package:arefapp/Screens/course_screen.dart';
import 'package:arefapp/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  _NavigationBottomState createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int _selectedIndex = 2;

  final List<Widget> _screens = [
    AccountScreen(),
    CourseListScreen(),
    HomeScreen(),
    ChallangeObtions(),
    CourseScreen(),

    //CourseScreen(),

    // Add your other screens here
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[50],
          body: _screens[_selectedIndex], // Use the selected index here
          bottomNavigationBar: Container(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: GNav(
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  color: Colors.grey[500],
                  activeColor: Colors.purple[500],
                  tabBackgroundColor: Color.fromARGB(255, 243, 200, 251),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  gap: 7,
                  tabs: [
                    GButton(
                      onPressed: () {
                        _onItemTapped(0);
                      },
                      icon: Icons.person,
                      text: 'حسابي',
                      textStyle: TextStyle(
                        fontFamily: "mid",
                        color: Colors.purple,
                      ),
                    ),
                    GButton(
                      onPressed: () {
                        _onItemTapped(1);
                      },
                      icon: Icons.book,
                      text: 'المواد',
                      textStyle: TextStyle(
                        fontFamily: "mid",
                        color: Colors.purple,
                      ),
                    ),
                    GButton(
                      onPressed: () {
                        _onItemTapped(3);
                      },
                      icon: Icons.home,
                      text: 'الرئيسية ',
                      textStyle: TextStyle(
                        fontFamily: "mid",
                        color: Colors.purple,
                      ),
                    ),
                    GButton(
                      onPressed: () {
                        _onItemTapped(2);
                      },
                      icon: Icons.trending_up_outlined,
                      text: ' التحديات',
                      textStyle: TextStyle(
                        fontFamily: "mid",
                        color: Colors.purple,
                      ),
                    ),
                    GButton(
                      icon: Icons.bolt_outlined,
                      onPressed: () {
                        _onItemTapped(4);
                      },
                      text: 'الترتيب ',
                      textStyle: TextStyle(
                        fontFamily: "mid",
                        color: Colors.purple,
                      ),
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    _onItemTapped(index);
                  },
                ),
              ))),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
