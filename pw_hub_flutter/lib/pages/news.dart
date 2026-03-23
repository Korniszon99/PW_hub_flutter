import 'package:flutter/material.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';
import 'package:pw_hub_flutter/extensions/l10n.dart';

import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';
import 'package:flutter/widgets.dart';

import '../components/news_post_card.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      backgroundColor: context.surface,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
            label: Text(context.l10n.filter),
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
            ),
          ),
          const SizedBox(height: 16),
          NewsPostCard(
            image: 'assets/committe.jpg',
            category: 'Uczelnia',
            title: 'Powołanie Komisji Rzetelności Naukowej PW',
            author: 'Rektor PW',
            date: '17.06.2025',
            text:
            'W trosce o wysokie standardy etyki i jakości badań naukowych...',
          ),
        ],
      ),
      bottomNavigationBar: const BottomNav(currentIndex: 2),
    );
  }
}
