import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../models/authentication_result.dart';
import '../models/inscription_result.dart';

class HttpService
{
  Function? callBack;
  Future<bool> inscription(String firstname, String lastname, String address, String email, String password)
  async {
    String url = "http://10.0.2.2:8080/api/authentication/users";
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
      InscriptionResult inscriptionResult = InscriptionResult.fromJson(jsonDecode(response.body));
      return true;
    }else if(response.statusCode == null){
        throw Exception('Failed to create user.');
    }
    else{
      throw Exception('Failed to create user.');
    }
  }

  Future<bool> logIn(String email, String password)
  async {
    String url = "http://10.0.2.2:8080/api/authentication/tokens";
    var data = jsonEncode(<String, String>{
      'email':email,
      'password':password,
    });
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: data,
    );
    if(response.statusCode == 200){
      SharedPreferences storage = await SharedPreferences.getInstance();
      AuthenticationResult authenticationResult = AuthenticationResult.fromJson(jsonDecode(response.body));
      await storage.setInt('userId', authenticationResult.id);
      await storage.setString('email', authenticationResult.email);
      await storage.setString('message', authenticationResult.message);
      await storage.setString('status', authenticationResult.status);
      await storage.setString('accessToken', authenticationResult.accessToken);
      await storage.setString('refreshToken', authenticationResult.refreshToken);
      await storage.setString('tokenType', authenticationResult.tokenType);
      return true;
    }else if(response.statusCode == null){
      throw Exception('Failed to connect user.');
    }
    else{
      throw Exception('Failed to connect user.');
    }
  }
}