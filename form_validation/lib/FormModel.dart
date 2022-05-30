class FormModel{

  String? email;
  String? password;

  ///Constructor
  FormModel(this.email, this.password);

  /// Email
  String get emailValue{
    return email!;
  }

  set emailValue(String _email){
    email = _email;
  }

  /// Password
  String get passValue{
    return password!;
  }

  set passValue(String _password){
    password = _password;
  }

}