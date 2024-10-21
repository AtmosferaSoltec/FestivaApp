import 'package:festiva_flutter/ui/widgets/cards/card.dart';
import 'package:flutter/material.dart';
import '../widgets/title_menu.dart';

class EventosPage extends StatelessWidget {
  const EventosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TitleMenu(title: "Eventos", subtitle: "¿Qúe planes realizamos?"),
          SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const CardEvento();
              },
            ),
          )
        ],
      ),
    ));
  }
}
