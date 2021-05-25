import 'package:memstuff_manha/helpers/date_helper.dart';
import 'package:memstuff_manha/core/app_const.dart';

import '../core/app_const.dart';
import '../core/app_const.dart';


class ValidatorHelper {
  static String validations(String text){
    if (text.isEmpty)
    {
      return kRequiredField;
    }
    else
    {
      return null;
    }
  }
  static String dateValidator(String text) {
    var date = DateHelper.parse(text);
    var datenow = DateTime.now();
      if (date.isAfter(datenow)) {
        return kDateValidator;
      }
      else 
      {
        return null;
      }
  }

  static String phoneValidator(String text) {
    if (text.isEmpty)
    {
      return kRequiredField;
    }
    else if (text.length != 14 && text.length != 15)
    {
      return kPhoneValidator;
    }
    else 
    {
      return null;
    }
  }
}