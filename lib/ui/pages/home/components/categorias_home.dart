import 'package:festiva_flutter/providers/provider.dart';
import 'package:festiva_flutter/ui/pages/home/components/category_chips.dart';
import 'package:festiva_flutter/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriasHome extends StatelessWidget {
  const CategoriasHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoriaProvider>(
        builder: (context, categoriaProvider, child) {
          final categorias = categoriaProvider.list;
          return  Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Categorias",
                  style: Styles.Headline,
                ),
                CategoryChips(categories: categorias,),
              ],
            ),
          );
        }
    );

  }
}