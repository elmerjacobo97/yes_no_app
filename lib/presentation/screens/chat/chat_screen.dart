import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrp1gqLULZrdrCKnmDyn9XiqeGI4vxDHQM_2djjejzcNJzX5JnvrD40kH5FlRxrTbxlNE&usqp=CAU',
          )),
        ),
        title: const Text('Flutter ❤️'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return const MyMessageBubble();
            },
          )),
          Text('Hola')
        ]),
      ),
    );
  }
}
