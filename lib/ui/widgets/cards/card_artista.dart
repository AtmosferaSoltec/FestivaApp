import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CardArtista extends StatelessWidget {
  const CardArtista({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://phantom-marca.unidadeditorial.es/bdde783211f028e8b6a132a0ae62a810/resize/828/f/jpg/assets/multimedia/imagenes/2022/09/20/16637014675433.jpg",
            width: 64,
            height: 64,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "Artista 1",
          style: TextStyle(fontSize: 12, color: colorT1),
        )
      ],
    );
  }
}
