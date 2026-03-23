import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';
import 'package:pw_hub_flutter/extensions/l10n.dart';
import 'package:pw_hub_flutter/resources/locale_provider.dart';
import 'package:pw_hub_flutter/resources/theme_provider.dart';
import '../components/app_top_bar.dart';
import '../components/bottom_navbar.dart';
import '../components/settings_card.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: const AppTopBar(),
      bottomNavigationBar: const BottomNav(currentIndex: null,),
      backgroundColor: context.surface,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          SettingsCard(
            title: "Tryb ciemny",
            description: "Włącz lub wyłącz tryb ciemny",
            borderColor: Colors.blue,
            borderWidth: 2,
            trailing: Switch(
              value: themeProvider.isDarkMode,
              onChanged: (value) {
                themeProvider.toggleTheme(value);
              },
            ),
          ),


          /// ===== JĘZYK =====
          Text(
            "Język",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 12),

          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButtonFormField<String>(
                value: context.locale.toString(),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                items: const [
                  DropdownMenuItem(
                    value: "pl",
                    child: Text("Polski"),
                  ),
                  DropdownMenuItem(
                    value: "en",
                    child: Text("English"),
                  ),
                ],
                onChanged: (value) {
                  if(value == null) {
                    context.read<LocaleProvider>().clearLocale();
                  } else {
                    context.read<LocaleProvider>().setLocale(Locale(value));
                  }
                  debugPrint("Wybrano język: $value");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}