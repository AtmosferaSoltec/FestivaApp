import 'package:festiva_flutter/data/module/service_locator.dart';
import 'package:festiva_flutter/providers/discoteca_provider.dart';
import 'package:festiva_flutter/providers/provider.dart';
import 'package:festiva_flutter/test/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/pages/menu_page.dart';

void main() {
  setupLocator();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => sl<UserProvider>()),
    ChangeNotifierProvider(create: (_) => sl<DiscotecaProvider>()),
    ChangeNotifierProvider(create: (_) => sl<CategoriaProvider>()),
  ], child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/menu",
      routes: {
        "/menu": (context) => const MenuPage(),
        "/tabs": (context) => const TabsPage(),
      },
      theme: ThemeData.light(),
    );
  }
}
