import 'package:festiva_flutter/ui/pages/home/components/components_home.dart';
import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/theme/styles.dart';
import 'package:festiva_flutter/ui/widgets/cards/card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const TopHome(),
                const SizedBox(
                  height: 12,
                ),
                const PerfilHome(),
                const SizedBox(
                  height: 12,
                ),
                const CategoriasHome(),
                const SizedBox(height: 12),
                const DiscotecasHome(),
            
                Row(
                  children: [
                    const Text(
                      "Eventos",
                      style: Styles.Headline,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(foregroundColor: colorT2),
                      child: const Row(children: [
                        Text(
                          "Ver más",
                          style: TextStyle(color: colorT2),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: colorT2,
                        )
                      ]),
                    )
                  ],
                ),
            
                Container(
                  height: 400,
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return const CardEvento();
                    },
                  ),
                ),


                Row(
                  children: [
                    const Text(
                      "Artistas",
                      style: Styles.Headline,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(foregroundColor: colorT2),
                      child: const Row(children: [
                        Text(
                          "Ver más",
                          style: TextStyle(color: colorT2),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: colorT2,
                        )
                      ]),
                    )
                  ],
                ),

                Row(
                  children: [
                    CardArtista(),
                    SizedBox(width: 8,),
                    CardArtista(),
                    Spacer()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
