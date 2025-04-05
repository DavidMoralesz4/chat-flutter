import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colors.secondary,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Hola, soy Lupe',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        ////--  El expaciado -- ////
        const SizedBox(height: 9),

        _ImageBubbble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubbble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://yesno.wtf/assets/no/12-dafd576be23d3768641340f76658ddfe.gif',
        width: size.width * 0.5,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: EdgeInsets.symmetric(),
            child: Text('Cargando mensage...'),
          );
        },
      ),
    );
  }
}
