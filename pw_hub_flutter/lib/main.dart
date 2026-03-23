import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:pw_hub_flutter/l10n/app_localizations.dart';
import 'package:pw_hub_flutter/pages/all_events.dart';
import 'package:pw_hub_flutter/pages/events.dart';
import 'package:pw_hub_flutter/pages/guides.dart';
import 'package:pw_hub_flutter/pages/home.dart';
import 'package:pw_hub_flutter/pages/map_card.dart';
import 'package:pw_hub_flutter/pages/map_place.dart';
import 'package:pw_hub_flutter/pages/news.dart';
import 'package:pw_hub_flutter/pages/settings.dart';
import 'package:pw_hub_flutter/resources/app_theme.dart';
import 'package:pw_hub_flutter/resources/locale_provider.dart';
import 'package:pw_hub_flutter/resources/theme_provider.dart';
import 'package:pw_hub_flutter/resources/top_bar_provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
          ChangeNotifierProvider(create: (_) => LocaleProvider()),
          ChangeNotifierProvider(create: (_) => TopBarProvider()),
        ],
        child: const PW_Hub(),
      ),
      );
}

class PW_Hub extends StatelessWidget {
  const PW_Hub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    return MaterialApp(
      title: 'PW HUB',
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('pl'),
        Locale('en')
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: localeProvider.locale,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        return supportedLocales.firstWhere(
              (locale) => locale.languageCode == deviceLocale?.languageCode,
          orElse: () => const Locale('en'), // domyślny
        );
      },
      theme: PWHUB_Theme.light,
      darkTheme: PWHUB_Theme.dark,
      themeMode: themeProvider.themeMode,
      routes: {
        '/' : (context) => HomeScreen(),
        '/events': (context) => EventsScreen(),
        '/events/all': (context) => AllEventsScreen(),
        '/news': (context) => NewsScreen(),
        '/guides': (context) => GuidesScreen(),
        '/maps': (context) => MapCardScreen(),
        '/settings': (context) => SettingsView(),
      },
    );
  }
}
