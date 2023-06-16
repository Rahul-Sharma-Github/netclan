import 'package:flutter/material.dart';
import 'package:netclan/pages/Refine/refine_page.dart';
import 'package:netclan/pages/explore/explore_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of Pages to show according to selected Index Value
  static List<Widget> widgetoptions = [
    const RefinePage(),
    const ExplorePage(),
  ];

  //selectedindex of Bottom NavigationBar [initial value = 0 ( Refine Page )]
  int selectedindex = 0;
  // method to change the selectedindex on tap/click of BottomNavigationBar Item
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //showing page according to Index Number
      body: widgetoptions.elementAt(selectedindex),
      // BottomNavigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_outlined),
            label: 'Refine',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Explore',
          ),
        ],
        currentIndex: selectedindex,
        iconSize: 30.0,
        elevation: 15.0,
        selectedItemColor: const Color.fromARGB(255, 6, 46, 51),
        onTap: onItemTapped,
      ),
    );
  }
}
