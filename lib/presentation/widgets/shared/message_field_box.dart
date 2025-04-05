import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class MessageFieldBox extends StatelessWidget {

  final ValueChanged<String> onValue; //Esta es el callback con el valor
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    
    final textController = TextEditingController(); /// Control del input a manejar.
    final focusNode = FocusNode(); // Para que el teclado no se baje.

    final colors = Theme.of(context).colorScheme; // colores de matherial


    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: colors.primary),
    );

    // Funcion para enviar el valor de mi input
    void submitText(value) {
        onValue(value);
        textController.clear();
        focusNode.requestFocus();
    }

    final inputDecoration = InputDecoration(
      hintText: 'Envia un mensage con un "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(icon: Icon(Icons.send_outlined), onPressed: () { 
        final textValue = textController.value.text;
          submitText(textValue);
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
          submitText(value);
      },
    );
  }
}
