import 'package:festiva_flutter/providers/provider.dart';
import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:festiva_flutter/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IdiomaPage extends StatefulWidget {
  const IdiomaPage({super.key});

  @override
  State<IdiomaPage> createState() => _IdiomaPageState();
}

class _IdiomaPageState extends State<IdiomaPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CategoriaProvider>(context, listen: false).getAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Top(label: "Idioma"),
      backgroundColor: colorFondo1,
      body: Consumer<CategoriaProvider>(
        builder: (context, categoriaProvider, child) {
          final categorias = categoriaProvider.list;
          return ListView.builder(
            itemCount: categorias.length,
            itemBuilder: (context, index) {
              final categoria = categorias[index];
              return ListTile(
                title: Text(
                  categoria.id.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  categoria.nombre,
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
