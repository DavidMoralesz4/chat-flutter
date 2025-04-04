import 'package:chat_test/domain/entities/message.dart';
import 'package:chat_test/presentation/providers/chat_provider.dart';
import 'package:chat_test/presentation/widgets/chat/her_message_bubble.dart';
import 'package:chat_test/presentation/widgets/chat/my_message_bubble.dart';
import 'package:chat_test/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvier =
        context
            .watch<
              ChatProvider
            >(); // Aca estoy buscando una instancia de ChatProvider

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded(
              /// Expanded - Un hijo ocupara todo el espacio disponible dependiendo de la direccion.
              child: ListView.builder(
                itemCount: chatProvier.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvier.messageList[index];

                  return (message.fromWho == FromWho.hers)
                      ? MyMessageBubble()
                      : HerMessageBubble();
                },
              ),
            ),

            // Caja de texto
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
