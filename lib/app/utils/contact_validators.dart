class ContactValitadors {
  static String? name(String? value) {
    if (value!.isEmpty) {
      return 'Insira um nome válido.';
    }
    final regexLenght = RegExp(r'^.{3,}$');
    if (!regexLenght.hasMatch(value)) {
      return 'Insira um nome maior.';
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }
    return 'Esse nome não é válido.';
  }

  static String? email(String? value) {
    if (value!.isEmpty) {
      return 'Insira um usuário/e-mail válido.';
    }
    final regex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    if (regex.hasMatch(value)) {
      return null;
    }
    return 'Esse e-mail não é válido.';
  }

  static String? message(String? value) {
    if (value!.isEmpty) {
      return 'Insira uma mensagem válida.';
    }
    final regexLenght = RegExp(r'^.{10,}$');
    if (!regexLenght.hasMatch(value)) {
      return 'Insira uma mensagem maior.';
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }
    return 'Essa mensagem não é válida.';
  }

  static String? subject(String? value) {
    if (value!.isEmpty) {
      return 'Insira um assunto válido.';
    }
    final regexLenght = RegExp(r'^.{5,}$');
    if (!regexLenght.hasMatch(value)) {
      return 'Insira um assunto maior.';
    }
    final regex = RegExp('[a-zA-Z]');
    if (regex.hasMatch(value)) {
      return null;
    }
    return 'Esse assunto não é válido.';
  }
}
