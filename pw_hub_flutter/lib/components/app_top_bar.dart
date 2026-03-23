import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';
import 'package:pw_hub_flutter/resources/theme_provider.dart';

import '../resources/top_bar_provider.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final topBarProvider = context.read<TopBarProvider>();
    return AppBar(
      backgroundColor: context.surface,
      elevation: 0.5,
      leading: IconButton(
        icon: Icon(Icons.settings, color: context.primary),
        onPressed: () {
          if(topBarProvider.selectedIndex == 0) {
            return;
          }
          topBarProvider.setIndex(0);
          Navigator.pushReplacementNamed(context, '/settings');
        },
      ),
      centerTitle: true,
      title: Image.asset(
        'assets/logo_black.png',
        height: 28,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.menu, color: context.primary),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
