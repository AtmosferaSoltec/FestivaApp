import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/theme/styles.dart';
import 'package:festiva_flutter/ui/widgets/modals/modal_evento.dart';
import 'package:flutter/material.dart';

class CardEvento extends StatelessWidget {
  const CardEvento({super.key});

  get colorTexto1 => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return const ModalEvento();
          },
        );
      },
      child: Card(
        color: colorFondo4,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    "https://cdn.teleticket.com.pe/especiales/rata-blanca-en-arequipa-rock-x-siempre/images/fondo-evento.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 100,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: colorFondo1,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "Gratis",
                      style: TextStyle(
                        color: colorT1,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latin Fest - Lima",
                    style: TextStyle(
                      color: colorT1,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        size: 12,
                        Icons.location_on_outlined,
                        color: colorT2,
                      ),
                      Text("Ibiza Discoteca", style: Styles.caption2),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
