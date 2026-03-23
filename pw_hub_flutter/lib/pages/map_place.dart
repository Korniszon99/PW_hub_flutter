import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';

class MapPlaceScreen extends StatelessWidget {
  const MapPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      body: Stack(
        children: [
          // MAPA
          Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                'Google Map here',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          // KARTA MIEJSCA
          Positioned(
            left: 12,
            right: 12,
            bottom: 90,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 20, color: Colors.black26),
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(label: Text('Organizacja studencka')),
                  SizedBox(height: 8),
                  Text(
                    'Klub Amplitron',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Gmach Elektroniki • czynne do 20:00',
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 0),
    );
  }
}
