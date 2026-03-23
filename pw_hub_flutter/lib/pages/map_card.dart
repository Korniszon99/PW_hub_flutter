import 'package:flutter/material.dart';
import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';

class MapCardScreen extends StatelessWidget {
  const MapCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7F9),
      appBar: const AppTopBar(),

      body: Stack(
        children: [
          // 🗺️ MAPA (placeholder – tu podłączysz google_maps_flutter)
          Container(
            color: Colors.grey.shade300,
            child: const Center(
              child: Icon(
                Icons.map,
                size: 120,
                color: Colors.black38,
              ),
            ),
          ),

          // 📍 KARTA MIEJSCA
          Positioned(
            left: 16,
            right: 16,
            bottom: 90,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // kategoria
                  Chip(
                    label: const Text('Organizacja studencka'),
                    backgroundColor: Colors.blue.shade50,
                  ),
                  const SizedBox(height: 8),

                  // nazwa
                  const Text(
                    'Klub Amplitron',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // meta
                  const Text(
                    'Gmach Elektroniki • parter\n'
                        'czynne do 20:00',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // akcje
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.directions),
                          label: const Text('Nawiguj'),
                          style: OutlinedButton.styleFrom(
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline),
                          label: const Text('Szczegóły'),
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: const BottomNav(currentIndex: 4),
    );
  }
}
