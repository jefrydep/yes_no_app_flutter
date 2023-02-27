import 'package:dio/dio.dart';
import 'package:yes_or_no_app/domain/entities/message.dart';

class GetYesNoAndswer{

final _dio = Dio(
  
);

Future<Message> getAnswer()async {
final  Response = await _dio.get('https://yesno.wtf/api');
throw UnimplementedError();
}

}