import 'package:festiva_flutter/providers/discoteca_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cards/card_discoteca.dart';
import '../widgets/title_menu.dart';

class DiscotecasPage extends StatefulWidget {
  const DiscotecasPage({super.key});

  @override
  State<DiscotecasPage> createState() => _DiscotecasPageState();
}

class _DiscotecasPageState extends State<DiscotecasPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<DiscotecaProvider>(context, listen: false).fetchProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TitleMenu(
              title: "Discotecas",
              subtitle: "Más cerca de ti",
            ),
            const SizedBox(height: 12),
            Consumer<DiscotecaProvider>(
              builder: (context, provider, child) {
                if (provider.products.isEmpty) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Expanded(
                  child: ListView.builder(
                      itemCount: provider.products.length,
                      itemBuilder: (context, index) {
                        final product = provider.products[index];
                        return CardDiscoteca(
                          discoteca: product,
                        );
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
