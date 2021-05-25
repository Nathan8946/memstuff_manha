import 'package:url_launcher/url_launcher.dart';

class ServicesCard {
  void call(String phone) => launch("phone: %phone");
  
  void sendSms(String phone) => launch("sms: $phone");

  void sendEmail(String email) => launch("mailTo: $email");
}