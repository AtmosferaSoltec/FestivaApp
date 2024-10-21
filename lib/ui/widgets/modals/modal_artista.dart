import 'package:flutter/material.dart';

class ModalArtista extends StatelessWidget {
  const ModalArtista({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
