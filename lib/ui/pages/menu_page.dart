import 'package:festiva_flutter/ui/pages/preferencias/preferencias_page.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import 'discotecas_page.dart';
import 'eventos_page.dart';
import 'home/home_page.dart';
import 'mapa_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const MapaPage(),
    const EventosPage(),
    const HomePage(),
    const DiscotecasPage(),
    const PreferenciasPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Eventos"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_bar), label: "Discotecas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Preferencias"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          // Oculta la etiqueta del ítem seleccionado
          showUnselectedLabels: false,
          backgroundColor: colorFondo3,
          selectedItemColor: colorP1,
          unselectedItemColor: colorT3,
        ),
        backgroundColor: colorFondo1,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}
