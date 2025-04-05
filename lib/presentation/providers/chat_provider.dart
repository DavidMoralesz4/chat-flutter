import 'package:chat_test/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  // El ChangeNotifier - Lo que dice es que el ChatProvider puede notificar cuando hay cambios (podemos redibujar)

  final ScrollController scrollController = ScrollController();

  List<Message> messageList = [
    // Message(text: 'Olio, como estas?', fromWho: FromWho.me),
    // Message(text: 'Que clima hace hoy?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar metodo
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    notifyListeners(); // Pendiente a un cambio
    moveScrollController(); // Debo activarlo cuando se envie el mensaje
  }

  // La funcion no tiene retorno
  void moveScrollController() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent, // Scroll maximo extendido
      duration: Duration(microseconds: 300), // Tiempo de duracion
      curve: Curves.easeOut, // Como una animacion (Puedes escojes de muchas)
    );
  }
}
