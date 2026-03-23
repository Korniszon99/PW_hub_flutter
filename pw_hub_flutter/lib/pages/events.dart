import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';

import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';
import '../components/event_card.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      backgroundColor: context.surface,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          EventCard(
            categoryColor: Colors.pink,
            icon: Icons.music_note,
            title: 'Morgan Jay – Stand-up i muzyka',
            description:
            'Wieczór pełen śmiechu i muzyki z Morganem Jayem...',
            location: 'Klub Stodoła',
            organizer: 'SSPW',
            language: 'EN',
            day: '25–26',
            month: 'czerwca',
            signup: true,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 1),
    );
  }
}
