import 'package:flutter/material.dart';

class MessageFielBox extends StatelessWidget {
  const MessageFielBox({super.key});



  @override
  Widget build(BuildContext context) {
final textController = TextEditingController();
final focusNode = FocusNode();
    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );
    var inputDecoration = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: OutlineInputBorder,
        focusedBorder: OutlineInputBorder,
        filled: true,
        suffix: IconButton(onPressed: (){
          final textValue = textController.value.text;
          textController.clear();
          print(textValue);
        }, icon:Icon(Icons.send_outlined)),
      );
    return TextFormField(
      onTapOutside: (event){
        focusNode.unfocus();

      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value){
        textController.clear();
        focusNode.requestFocus();

      },
      // onChanged: (value){

      // },

    );
  }
}