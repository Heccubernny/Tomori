import 'package:flutter/material.dart';
import 'package:tomori/screens/home.dart';
import 'package:tomori/screens/library.dart';
import 'package:tomori/screens/profile.dart';
import 'package:tomori/screens/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
      ),
      body: Stack(
        children: [
          renderView(
            0,
            const HomeScreen(),
          ),
          renderView(
            1,
            const SearchScreen(),
          ),
          renderView(
            2,
            const LibraryScreen(),
          ),
          renderView(
            3,
            const ProfileScreen(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
