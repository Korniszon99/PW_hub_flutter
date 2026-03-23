import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/top_bar_provider.dart';

class BottomNav extends StatelessWidget {
  final int? currentIndex;
  final ValueChanged<int>? onTap;

  const BottomNav({
    super.key,
    this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool hasActiveItem = currentIndex != null;
    final topBarProvider = context.read<TopBarProvider>();
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex ?? 0,
      selectedItemColor:
      hasActiveItem ? const Color(0xFF007AFF) : Colors.grey,
      unselectedItemColor: Colors.grey,
      onTap: onTap ??
              (index) {
            if (currentIndex == index) return;
            topBarProvider.clearIndex();

            switch (index) {
              case 0:
                Navigator.pushReplacementNamed(context, '/');
                break;
              case 1:
                Navigator.pushReplacementNamed(context, '/events');
                break;
              case 2:
                Navigator.pushReplacementNamed(context, '/news');
                break;
              case 3:
                Navigator.pushReplacementNamed(context, '/guides');
                break;
              case 4:
                Navigator.pushReplacementNamed(context, '/maps');
                break;
            }
          },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: ''),
      ],
    );
  }
}