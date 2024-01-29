import 'dart:io';

void main() {
  print("welcome to register, pls enter your username");
  String usernameForRegister = stdin.readLineSync() ?? "";
  print("pls enter your email");

  String emailForRegister = stdin.readLineSync() ?? "";
  print("pls enter your password");
  String passwordForRegister = stdin.readLineSync() ?? "";
  confirmPasswordRecoursive(usernameForRegister,passwordForRegister);
}

void confirmPasswordRecoursive(String username, String password) {
  print("confirm your password");
  String confirmPasswordForRegister = stdin.readLineSync() ?? "";

  if (password != confirmPasswordForRegister) {
    print("passwords do not match,pls try again");
    confirmPasswordRecoursive(username, password);
  } else {
    print("registered succesfully");
    print("welcome to login part, pls enter your username and password");
    LoginRecoursive(username, password);
  }
}

void confirmPassword(String username, String password) {


  while(true)
{
print("confirm your password");
  String confirmPasswordForRegister = stdin.readLineSync() ?? "";

  if (password != confirmPasswordForRegister) {
    print("passwords do not match,pls try again");
    confirmPassword(username, password);
  } else {
    print("registered succesfully");
    print("welcome to login part, pls enter your username and password");
    Login(username, password);
    break;
}  
  }
}

void LoginRecoursive(String username, String password) {
  print("enter your username");
  String usernameForLogin = stdin.readLineSync() ?? "";
  print("enter your password");
  String passwordForLogin = stdin.readLineSync() ?? "";

  if (username == usernameForLogin && password == passwordForLogin) {
    print("login succesfully");
  } else {
    print("login failed, pls enter valid username and password!!!)))))");
    LoginRecoursive(username, password);
  }
}
  void Login(String username, String password) {
    while (true) {
      print("enter your username");
      String usernameForLogin = stdin.readLineSync() ?? "";
      print("enter your password");
      String passwordForLogin = stdin.readLineSync() ?? "";

      if (username == usernameForLogin && password == passwordForLogin) {
        print("login succesfully");
          break;
      }
    print("login failed, pls enter valid username and password!!!)))))");

    
    }
    
  
}
