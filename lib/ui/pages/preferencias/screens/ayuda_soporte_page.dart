import 'package:festiva_flutter/providers/user_provider.dart';
import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AyudaSoportePage extends StatelessWidget {
  const AyudaSoportePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorFondo1,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            "Ayuda y soporte",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        backgroundColor: colorFondo1,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //userProvider.fetchUser();
            userProvider.getAll();
          },
          child: Icon(Icons.add),
        )
    );
  }
}