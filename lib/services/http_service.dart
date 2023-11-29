import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/inscription_result.dart';

class HttpService
{

  Function? callBack;
  Future<InscriptionResult> inscription(String prenom, String nom, String address, String email, String pass, String role, Function callback)
  async {
    String url = "http://10.0.2.2:8081/api/authentication/users";
    var data = jsonEncode(<String, String>{
      'firstname':prenom,
      'lastname': nom,
      'email':email,
      'password':pass,
      'address': address,
      'role':role
    });
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: data,
    );
    if(response.statusCode == 200){
      callBack!(true);
      return InscriptionResult.fromJson(jsonDecode(response.body));
    }else{
      callBack!(false);
      throw Exception('Failed to create user.');
    }
  }
}