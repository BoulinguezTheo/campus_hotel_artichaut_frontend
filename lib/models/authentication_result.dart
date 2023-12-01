class AuthenticationResult
{
  int id;
  String email;
  List<dynamic> roles;
  String message;
  String status;
  String accessToken;
  String refreshToken;
  String tokenType;

  AuthenticationResult({required this.id, required this.email, required this.roles, required this.message, required this.status, required this.accessToken, required this.refreshToken, required this.tokenType});
  factory AuthenticationResult.fromJson(Map<String, dynamic> json){
    return AuthenticationResult(
      id: json['id'],
      email: json["email"],
      roles: json["roles"],
      message: json["message"],
      status: json["status"],
      accessToken: json["access_token"],
      refreshToken: json["refresh_token"],
      tokenType: json["token_type"],
    );
  }
}