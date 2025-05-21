import 'package:flutter/material.dart';
import 'package:mr_pritam_client_app/NavBaarController/home.dart';
import 'package:mr_pritam_client_app/NavBaarController/mission.dart';
import 'package:mr_pritam_client_app/NavBaarController/profile.dart';
import 'package:mr_pritam_client_app/NavBaarController/tickting.dart';

class BottomNavbaar extends StatefulWidget {
  const BottomNavbaar({super.key});

  @override
  State<BottomNavbaar> createState() => _BottomNavbaarState();
}

class _BottomNavbaarState extends State<BottomNavbaar> {
  int screenIndex = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    MissionScreen(),
    TicketingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory,
          ),
          child: BottomNavigationBar(
            currentIndex: screenIndex,
            selectedItemColor: const Color(0xffF5A302),
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            onTap: (index) {
              setState(() {
                screenIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            elevation: 2,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/home_icon.png",
                    height: 30,
                    width: 30,
                    color: Colors.grey,
                  ),
                  label: "Home",
                  activeIcon: const Icon(
                    Icons.home,
                    size: 45,
                    color: Color(0xffF5A302),
                  )),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/office.png",
                  height: 30,
                  width: 30,
                  color: Colors.grey,
                ),
                label: "Mission",
                activeIcon: Image.asset(
                  "assets/images/office1.png",
                  height: 55,
                  width: 55,
                  color: const Color(0xffF5A302),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/chat.png",
                    height: 35, width: 35, color: Colors.grey),
                label: "Ticketing",
                activeIcon: Image.asset(
                  "assets/images/chat1.png",
                  height: 55,
                  width: 55,
                  color: const Color(0xffF5A302),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/images/profile.png",
                    height: 35, width: 35, color: Colors.grey),
                label: "profile",
                activeIcon: Image.asset(
                  "assets/images/profile1.png",
                  height: 55,
                  width: 55,
                  color: const Color(0xffF5A302),
                ),
              ),
            ],
          ),
        ),
      ),
      body: _screen[screenIndex],
    );
  }
}
