import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(height: 1, color: Colors.black),

        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: List.generate(5, (index) {
            return BottomNavigationBarItem(
              label: '',
              icon: Stack(
                alignment: Alignment.topCenter,
                children: [
                  if (currentIndex == index)
                    const Positioned(
                      top: 0,
                      child: Icon(Icons.circle, size: 8, color: Colors.blue),
                    ),
                  Padding(
                    padding: EdgeInsets.only(top: currentIndex == index ? 8.0 : 0),
                    child: Icon(
                      _getIcon(index),
                      color: currentIndex == index ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ],
    );
  }

  IconData _getIcon(int index) {
    switch (index) {
      case 0:
        return Icons.home;
      case 1:
        return Icons.search;
      case 2:
        return Icons.add_circle_outline;
      case 3:
        return Icons.favorite_border;
      default:
        return Icons.help_outline;
    }
  }
}