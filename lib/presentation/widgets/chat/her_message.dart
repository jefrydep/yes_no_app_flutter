import 'package:flutter/material.dart';
import 'package:yes_or_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});
  final Message message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBubble(message.imageUrl ?? 'https://cloudfront-us-east-1.images.arcpublishing.com/elespectador/DLDVOYL33BAUHN4Z62FXRDJ6C4.jpg'),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble(
    this.imageUrl,
  );
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('MI amor esta enviando images'),
          );
        },
      ),
    );
  }
}
