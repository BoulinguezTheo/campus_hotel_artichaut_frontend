import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/inscription_result.dart';

class HttpService
{

  Function? callBack;
  Future<InscriptionResult> inscription(String firstname, String lastname, String email, String password,String address)
  async {
    String url = "http://10.0.2.2:8081/api/authentication/users";
    var data = jsonEncode(<String, String>{
      'firstname':firstname,
      'lastname': lastname,
      'email':email,
      'password':password,
      'address': address,
    });
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: data,
    );
    if(response.statusCode == 200){
      return InscriptionResult.fromJson(jsonDecode(response.body));
    }else if(response.statusCode == null){
        throw Exception('Failed to create user.');
    }
    else{
      throw Exception('Failed to create user.');
    }
  }
}