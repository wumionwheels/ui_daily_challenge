import 'package:flutter/material.dart';



class MyButtomNav extends StatefulWidget {
  final Function(int) onTap;
  final int selectedIndex;

  const MyButtomNav({
    super.key,
    required this.onTap, 
    required this.selectedIndex
  });

  @override
  State<MyButtomNav> createState() => _MyButtomNavState();
}

class _MyButtomNavState extends State<MyButtomNav> {
  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: widget.selectedIndex,
        onTap: widget.onTap,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.image_search_outlined),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history_outlined),
        label: 'History',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.checkroom_rounded),
        label: 'Wardrobe',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        label: 'Profile',
      ),
              ]
            )
    );
  }
}

