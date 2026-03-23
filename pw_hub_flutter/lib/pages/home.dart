import 'package:flutter/material.dart';
import 'package:pw_hub_flutter/components/app_top_bar.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';

import '../components/announcement.dart';
import '../components/bottom_navbar.dart';
import '../components/event.dart';
import '../components/timesensitive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: AppTopBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          TimeSensitiveRow(),
          SizedBox(height: 24),
          SectionHeader(),
          SizedBox(height: 12),
          NoticeItem(
            title: 'Sztuczna inteligencja i cyberbezpieczeństwo...',
            meta: '20 czerwca 2025 • WEiTI',
            text:
            'Politechnika Warszawska i PIG-PIB realizują projekt e-Geologia...',
            imagePath: 'assets/ai5.jpg',
          ),
          NoticeItem(
            title: 'Erasmus+ Uniwersytet Deusto',
            meta: '20 czerwca 2025 • Erasmus+',
            text:
            'Uniwersytet Deusto zaprasza studentów PW na staże badawcze...',
            imagePath: 'assets/uni2.jpg',
          ),
        ],
      ),

      bottomNavigationBar: const BottomNav(currentIndex: 0,),
    );
  }
}
