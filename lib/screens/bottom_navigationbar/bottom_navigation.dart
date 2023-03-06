import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mygateapp/screens/community/community.dart';
import 'package:mygateapp/screens/service_page/service_page.dart';
import 'package:mygateapp/screens/welcome_page/welcome_page.dart';


class BottomPage extends StatefulWidget {
  BottomPage({Key? key}) : super(key: key);

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  List page = [
    WelcomePage(),
    CommunityPage(),
    ServicePage(),
  ];

  int count = 0;

  int i = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        count = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: page.elementAt(count),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ad_units,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.design_services_rounded,
              ),
              label: "",
            ),
          ],
          currentIndex: count,
          selectedItemColor: Colors.deepOrange,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
