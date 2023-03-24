import 'package:flutter/material.dart';
import 'package:mvvm_app/models/user_model.dart';
import 'package:mvvm_app/repository/auth_repository.dart';
import 'package:mvvm_app/utils/routes/routes_names.dart';
import 'package:mvvm_app/utils/utils.dart';
import 'package:mvvm_app/viewModel/user_view_model.dart';
import 'package:provider/provider.dart';

class AuthViewModel with ChangeNotifier {
  final _auth = AuthRepository();

  bool _loginLoading = false;
  bool _signupLoading = false;

  get loading => _loginLoading;
  get signupLoading => _signupLoading;

  void setLoginLoading(bool value) {
    _loginLoading = value;
    notifyListeners();
  }

  void setSignUpLoading(bool value) {
    _signupLoading = value;
    notifyListeners();
  }

  Future<void> apilogin(dynamic data, BuildContext context) async {
    setLoginLoading(true);
    _auth.apiLogin(data).then((value) {
      setLoginLoading(false);

      //! Api hit krtay huay sharedPreferences safe bhi krne hain!

      final userPreference = Provider.of<UserViewModel>(context, listen: false);
      userPreference.saveUser(UserModel(token: value['token'].toString()));

      Utils.flushBarErrorMessage("Login Successfull", context);

      Navigator.pushNamed(context, RouteNames.home);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setLoginLoading(false);
    });
  }

  Future<void> apiSignUp(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _auth.signUp(data).then((value) {
      Utils.flushBarErrorMessage("Sign Up Successfull", context);

      Navigator.pushNamed(context, RouteNames.home);
      setSignUpLoading(false);
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setSignUpLoading(false);
    });
  }
}
