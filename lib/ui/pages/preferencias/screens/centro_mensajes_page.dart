import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../providers/counter.dart';

class CentroMensajesPage extends StatelessWidget {
  const CentroMensajesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

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
          "Centro de mensajes",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: colorFondo1,
      body: Center(
        child: Text(
          'Count: ${counter.count}',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
