import 'package:chat_test/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_test/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_test/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded( /// Expanded - Un hijo ocupara todo el espacio disponible dependiendo de la direccion.
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  // Paress para mostrar uno u otro chat
                return (index % 2 == 0) 
                ? HerMessageBubble()
                : MyMessageBubble();
              },)
            ),

            // Caja de texto
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
