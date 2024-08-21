import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class loginController extends GetxController {
  final is_login = false.obs;




  void login(email,password) async {
  // final response = http.get(Uri.parse("name.com"));
    print(email+" "+password);
    // if(!email || email=="" | ) {
    //
    // }
  }

  void sample() {
    final name;
  }

  void user_data() async {
    final url = Uri.parse('https://randomuser.me/api/');
    final data = await http.get(url);
    var users = jsonDecode(data.body);
    print(users['results'][0]['name']['first']);
  }

}