import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    
    final textController = TextEditingController(); /// Control del input a manejar.
    final focusNode = FocusNode(); // Para que el teclado no se baje.

    final colors = Theme.of(context).colorScheme; // colores de matherial

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: colors.primary),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(icon: Icon(Icons.send_outlined), onPressed: () { 
        final textValue = textController.value.text;
        print('Valor de la caja de texto: $textValue');
        textController.clear();
      }),
    );

    return TextFormField(
      onTapOutside: (event) { /// Remueve el foco si esta en movimiento
        focusNode.unfocus(); // onFocus()
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration, 
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },

      // onChanged: (value) {
      //   print('value $value');
      // },
    );
  }
}
