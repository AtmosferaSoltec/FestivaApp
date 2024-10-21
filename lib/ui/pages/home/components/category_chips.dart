import 'package:festiva_flutter/domain/model/categoria.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

class CategoryChips extends StatefulWidget {
  final List<Categoria> categories;
  const CategoryChips({Key? key, required this.categories}) : super(key: key);
  @override
  _CategoryChipsState createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {

  String selectedCategory= 'Todas';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Habilita el desplazamiento horizontal
      child: Row(
        children: widget.categories.map((category) {
          final isSelected = selectedCategory == category;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: RawChip(
              label: Text(
                category.nombre,
                style: const TextStyle(fontSize: 12),
              ),
              selected: isSelected,
              onSelected: (selected) {
                setState(() {
                  selectedCategory = category.nombre;
                });
              },
              selectedColor: colorFondo1,
              backgroundColor: colorFondo1,
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : colorT2,
              ),
              shape: StadiumBorder(
                side: BorderSide(
                  color: isSelected ? colorP1 : colorT2,
                  width: 1.5,
                ),
              ),
              showCheckmark: false,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              visualDensity: VisualDensity.compact,
            ),
          );
        }).toList(),
      ),
    );
  }
}