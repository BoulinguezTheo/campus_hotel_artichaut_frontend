import 'package:campus_hotel_artichaut_frontend/features/room_category_list/domain/entities/room_type_entity.dart';

class RoomTypeModel extends RoomTypeEntity {
  const RoomTypeModel({
    required String name,
    required String description,
    required double price,
    List<DateTime>? arrivalsAvailabilities, // Make it nullable
  }) : super(
    name: name,
    description: description,
    price: price,
    arrivalsAvailabilities: arrivalsAvailabilities ?? const [],
  );

  factory RoomTypeModel.fromJson(Map<String, dynamic> json) {
    return RoomTypeModel(
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      arrivalsAvailabilities: json['arrivalsAvailabilities'],
    );
  }
}
