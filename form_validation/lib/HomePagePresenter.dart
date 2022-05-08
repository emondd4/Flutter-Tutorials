import 'package:flutter/material.dart';
import 'package:form_validation/FormModel.dart';

class HomePagePresenter {
  BuildContext context;

  HomePagePresenter(this.context, FormModel? formModel);

  /// email validation
  emailValidation() {
    return (text) {
      if (text!.isEmpty) {
        return 'Email Is Empty';
      } else {
        if (!text.contains("@")) {
          return 'Not Valid Email';
        }
      }
      return null;
    };
  }

  /// password validation
  passwordValidation() {
    return (text){
      if (text!.isEmpty) {
        return 'Password Field Is Empty';
      } else {
        return null;
      }
    };
  }

  userValidate(bool validate) {
    return () {
      if (!validate) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email And Password Is Not Valid')),
        );
        return;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email And Password Is Valid')),
        );
      }
    };
  }
}
