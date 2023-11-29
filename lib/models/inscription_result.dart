class InscriptionResult
{
  String id;
  String prenom;
  String nom;
  String status;
  InscriptionResult({required this.id, required this.prenom, required this.nom, required this.status});
  factory InscriptionResult.fromJson(Map<String, dynamic> json){
    return InscriptionResult(
      id: json['id'],
      prenom: json["firstname"],
      nom: json["lastname"],
      status: json["status"],
    );
  }

}