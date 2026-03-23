import 'package:flutter/widgets.dart';
import 'package:pw_hub_flutter/extensions/colors.dart';

import '../extensions/l10n.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          context.l10n.new_announcements,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacementNamed(context, '/events/all');
          },
          child: Text(
            context.l10n.see_all,
            style: TextStyle(
              fontSize: 13,
              color: context.onSecondary,
            ),
          ),
        )

      ],
    );
  }
}
