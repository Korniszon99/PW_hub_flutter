import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';
import 'package:pw_hub_flutter/extensions/l10n.dart';

import '../components/announcement.dart';
import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';
import '../components/contact_card.dart';

class GuidesScreen extends StatelessWidget {
  const GuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      backgroundColor: context.surface,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            context.l10n.your_contact_places,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ContactCard(
                  title: 'Dziekanat EiTI',
                  subtitle: 'pn–pt 9:00–13:00',
                  icon: Icons.school,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const NoticeItem(
            title: 'Jak czytać Regulamin Studiów?',
            meta: 'Twoje prawa i obowiązki • WRS',
            text:
            'Co zrobić, jeśli masz wątpliwości co do zasad studiowania?',
            imagePath: 'assets/uni3.jpg',
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 3),
    );
  }
}
