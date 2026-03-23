import 'package:flutter/material.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';
import '../components/app_top_bar.dart';
import '../components/event_card.dart';
import '../components/bottom_navbar.dart';

class EventColors {
  static const culture = Color(0xFFD63384);
  static const social = Color(0xFF198754);
  static const party = Color(0xFFDC3545);
  static const travel = Color(0xFF0D6EFD);
  static const conference = Color(0xFF6F42C1);
  static const training = Color(0xFFFD7E14);
  static const tech = Color(0xFF6610F2);
}

class AllEventsScreen extends StatelessWidget {
  const AllEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.surface,
      appBar: const AppTopBar(),

      body: Column(
        children: [
          // 🔍 Filtruj
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
                label: const Text('Filtruj'),
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: context.onSurface
                ),
              ),
            ),
          ),

          // 📋 Lista wydarzeń
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              children: const [
                EventCard(
                  categoryColor: EventColors.culture, // culture
                  icon: Icons.music_note,
                  title: 'Vivaldi & Morricone – Koncert w Filharmonii',
                  description:
                  'Wyjątkowy wieczór muzyczny z Vivaldim i Morricone '
                      'w Filharmonii Narodowej.',
                  location: 'Filharmonia Narodowa',
                  organizer: 'Komisja Kultury SSPW',
                  language: 'PL / EN',
                  day: '22',
                  month: 'czerwca',
                  signup: true,
                ),

                EventCard(
                  categoryColor: EventColors.social, // social
                  icon: Icons.people,
                  title: 'Ognisko Posesyjne',
                  description:
                  'Relaks po sesji nad Wisłą! Koc, ognisko i chill.',
                  location: 'Plaża Poniatówka',
                  organizer: 'WRS MiNI / WRS EE',
                  language: 'PL / EN',
                  day: '26',
                  month: 'czerwca',
                ),

                EventCard(
                  categoryColor: EventColors.tech, // tech
                  icon: Icons.memory,
                  title: 'Premiera bolidu WUT-6',
                  description:
                  'Oficjalna prezentacja najnowszego bolidu zespołu '
                      'WUT Racing.',
                  location: 'Gmach Główny PW',
                  organizer: 'WUT Racing',
                  language: 'PL / EN',
                  day: '2',
                  month: 'lipca',
                ),

                EventCard(
                  categoryColor: EventColors.travel, // travel
                  icon: Icons.map,
                  title: 'Autostop po sąsiedzku',
                  description:
                  'Autostopowy wyjazd do Pragi w klimacie Pata i Mata.',
                  location: 'Warszawa → Praga',
                  organizer: 'WRS GiK PW',
                  language: 'PL / EN',
                  day: '28.06–1.07',
                  month: '',
                  signup: true,
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: const BottomNav(currentIndex: 1),
    );
  }
}
