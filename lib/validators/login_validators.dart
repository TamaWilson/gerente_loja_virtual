import 'dart:async';


class LoginValidators {

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      RegExp exp = new RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
      if (exp.hasMatch(email)) {
        sink.add(email);
      } else {
        sink.addError("Insira um email válido");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink){
      if(password.length > 4) {
        sink.add(password);
      } else {
        sink.addError("Password deve contar pelo menos 4 caracteres");
      }
    }
  );
}