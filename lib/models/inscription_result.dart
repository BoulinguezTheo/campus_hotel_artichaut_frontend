class InscriptionResult
{
  String id;
  String email;
  List<String> roles;
  String message;
  String status;
  String accessToken;
  String refreshToken;
  String tokenType;

  InscriptionResult({required this.id, required this.email, required this.roles, required this.message, required this.status, required this.accessToken, required this.refreshToken, required this.tokenType});
  factory InscriptionResult.fromJson(Map<String, dynamic> json){
    return InscriptionResult(
      id: json['id'],
      email: json["email"],
      roles: json["roles"],
      message: json["message"],
      status: json["status"],
      accessToken: json["accessToken"],
      refreshToken: json["refreshToken"],
      tokenType: json["tokenType"],
    );
  }
}