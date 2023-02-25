import 'package:flutter/material.dart';
import 'package:yes_or_no_app/presentation/widgets/chat/her_message.dart';
import 'package:yes_or_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_or_no_app/presentation/widgets/shared/message_fiel_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/DLDVOYL33BAUHN4Z62FXRDJ6C4.jpg'),
          ),
        ),
        title: const Text('Chat Screen'),),
        body: const _ChatView(),
    );
  }

}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return(index % 2 == 0)
                ? const HerMessageBubble()
                : const MyMessageBubble();
                
                },)),
          const MessageFielBox()
          ],
        ),
      ),
    );
  }
}