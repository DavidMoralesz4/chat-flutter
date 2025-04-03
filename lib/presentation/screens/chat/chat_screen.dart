import 'package:chat_test/presentation/screens/chat/view/view_chat_screen.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/013/656/780/original/ai-ia-logo-design-template-vector.jpg'),
            ),
          ),
          title: Text('Lupe GPT', style: TextStyle( color: Colors.white ),),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        body: ChatView(), // Aqui llamamos Nuestro chatView que es el contenido (body)
      );
  }
}






