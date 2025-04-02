import 'package:chat_test/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded( /// Expanded - Un hijo ocupara todo el espacio disponible dependiendo de la direccion.
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                return MyMessageBubble();
              },)
            ),
            
            Text('Aqui estamos'),

            
            Text('Hello world')
          ],
        ),
      ),
    );
  }
}
