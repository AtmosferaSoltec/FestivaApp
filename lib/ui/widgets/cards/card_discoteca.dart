import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CardDiscoteca extends StatelessWidget {
  final Discoteca discoteca;
  const CardDiscoteca({
    super.key,
    required this.discoteca,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colorFondo4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 4,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.network(
                        width: double.infinity,
                        height: 132,
                        discoteca.portada,
                        fit: BoxFit.fitWidth),
                  ),
                  Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFF00C64F),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "Abierto",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Image.network(width: 42, height: 42, discoteca.logo),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        discoteca.nombre,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: colorT1),
                      ),
                      const Text(
                        "Discoteca",
                        style: TextStyle(fontSize: 14, color: colorT2),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
