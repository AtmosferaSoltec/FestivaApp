import 'package:festiva_flutter/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget implements PreferredSizeWidget {
  final String label;

  const Top({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: Text(
        label,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
