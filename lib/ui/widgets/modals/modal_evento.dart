import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../cards/card_artista.dart';
import '../cards/card_info.dart';

class ModalEvento extends StatelessWidget {
  const ModalEvento({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: colorFondo4,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    "https://picsum.photos/200/300",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Sábado de rock",
                    style: TextStyle(
                        fontSize: 20,
                        color: colorT1,
                        fontWeight: FontWeight.w900),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        color: colorT1,
                        size: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share_outlined,
                        color: colorT1,
                        size: 20,
                      ))
                ],
              ),
              const Text(
                "¡Rock en Vivo este sábado! 🎸🤘 Ven y disfruta de la mejor música en nuestro evento. ¡Te esperamos! #SábadoDeRock 🎶🔥",
                style: TextStyle(color: colorT2, fontSize: 14),
              ),
              SizedBox(
                height: 12,
              ),
              const Row(
                children: [
                  Expanded(flex: 2, child: CardInfo()),
                  Expanded(flex: 3, child: CardInfo()),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              const CardInfo(),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  const Expanded(child: CardInfo()),
                  const SizedBox(
                    width: 8,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: colorBlue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.message_outlined),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: colorGreen,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.phone),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Artistas Invitados",
                      style: TextStyle(fontSize: 14, color: colorT1),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        CardArtista(),
                        SizedBox(width: 12),
                        CardArtista(),
                        SizedBox(width: 12),
                        CardArtista(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
