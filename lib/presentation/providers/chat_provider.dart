import 'package:flutter/material.dart';
import 'package:yes_or_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{
  List<Message> menssages = [
    Message(text: 'Hola MI a mor como estas', fromWho: FromWho.hers),
    Message(text: 'Hola hermosa estoy bien', fromWho: FromWho.me),
     
    
  ];
  Future<void> sendMessages(String text)async{
   final newMessage = Message(text: text, fromWho: FromWho.me);
   menssages.add(newMessage);

   notifyListeners(); 
  }
  
   

}