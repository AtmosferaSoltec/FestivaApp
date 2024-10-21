import 'package:festiva_flutter/ui/pages/preferencias/screens/ayuda_soporte_page.dart';
import 'package:festiva_flutter/ui/pages/preferencias/screens/centro_mensajes_page.dart';
import 'package:festiva_flutter/ui/pages/preferencias/screens/idioma_page.dart';
import 'package:festiva_flutter/ui/pages/preferencias/screens/perfil_page.dart';
import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/widgets/item_preferencia.dart';
import 'package:festiva_flutter/ui/widgets/title_menu.dart';
import 'package:flutter/material.dart';

class PreferenciasPage extends StatelessWidget {
  const PreferenciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(onGenerateRoute: (settings) {
      return MaterialPageRoute(
          builder: (context) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TitleMenu(
                        title: "Preferencias",
                        subtitle: "Selecciona una opción"),
                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.person_outline_rounded,
                      title: "Información personal",
                      page: PerfilPage(),
                    ),
                    const SizedBox(height: 12),
                       ItemPreferencia(
                        icon: Icons.language,
                        title: "Idioma",
                        subtitle: "Español",
                        page: IdiomaPage(),
                      ),

                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.message_outlined,
                      title: "Centro de mensajes",
                      page: CentroMensajesPage(),
                    ),
                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.help_outline,
                      title: "Ayuda y soporte",
                      page: AyudaSoportePage(),
                    ),
                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.star_outline,
                      title: "Calificar app",
                      isVisible: false,
                    ),
                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.book_outlined,
                      title: "Terminos y condiciones",
                      isVisible: false,
                    ),
                    const SizedBox(height: 12),
                    ItemPreferencia(
                      icon: Icons.logout,
                      title: "Cerrar Sesión",
                      isVisible: false,
                      color: colorRed,
                    ),
                  ],
                ),
              )
          )
      );
    });
  }
}
