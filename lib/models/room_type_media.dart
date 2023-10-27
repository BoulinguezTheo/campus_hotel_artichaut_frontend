import 'media_model.dart';

class RoomTypeModel {
  RoomName name;
  String description;
  List<MediaModel> images;
  double price;
  List<DateTime> arrivalAvailabilities;

  RoomTypeModel(this.name, this.description, this.images, this.price,
      this.arrivalAvailabilities);
}

enum RoomName { luxury, cosy, suite }
