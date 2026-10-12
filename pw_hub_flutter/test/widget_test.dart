import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:pw_hub_flutter/main.dart';
import 'package:pw_hub_flutter/resources/locale_provider.dart';
import 'package:pw_hub_flutter/resources/theme_provider.dart';
import 'package:pw_hub_flutter/resources/top_bar_provider.dart';

void main() {
  testWidgets('PW Hub builds with its required providers', (tester) async {
    await tester.pumpWidget(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => TopBarProvider()),
      ],
      child: const PW_Hub(),
    ));
    await tester.pumpAndSettle();
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
