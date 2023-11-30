class InscriptionResult
{
  int id;
  String email;
  // List<dynamic> roles;
  String message;
  String status;
  String accessToken;
  String refreshToken;
  String tokenType;

  InscriptionResult({required this.id, required this.email, required this.message, required this.status, required this.accessToken, required this.refreshToken, required this.tokenType});
  factory InscriptionResult.fromJson(Map<String, dynamic> json){
    return InscriptionResult(
      id: json['id'],
      email: json["email"],
      message: json["message"],
      status: json["status"],
      accessToken: json["access_token"],
      refreshToken: json["refresh_token"],
      tokenType: json["token_type"],
    );
  }
  int getId(){
    return id;
  }
}