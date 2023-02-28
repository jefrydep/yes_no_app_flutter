import 'package:flutter/material.dart';
import 'package:yes_or_no_app/config/helpers/get_yes_no_answers.dart';
import 'package:yes_or_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier{

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAndswer getYesNoAnswer = GetYesNoAndswer();
  List<Message> menssages = [
    Message(text: 'Hola MI a mor como estas', fromWho: FromWho.hers),
    Message(text: 'Hola hermosa estoy bien', fromWho: FromWho.me),
     
    
  ];
  Future<void> sendMessages(String text)async{
    if(text.isEmpty)return;
   final newMessage = Message(text: text, fromWho: FromWho.me);
   menssages.add(newMessage);
   if(text.endsWith('?')){
     herReplay();
   }
   moveScrolltoBotton();

   notifyListeners(); 
  }

  Future<void> herReplay ()async{
    final herMessage = await  getYesNoAnswer.getAnswer();
    menssages.add(herMessage);
    moveScrolltoBotton();
    
      }
  Future<void> moveScrolltoBotton()async{
    await Future.delayed(Duration(milliseconds: 100));

     chatScrollController.animateTo(
       chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }
   

}