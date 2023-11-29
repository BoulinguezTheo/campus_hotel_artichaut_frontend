class RoomTypeEntity {
  final String ? name;
  final String ? description;
  final double ? price;
  final List<DateTime> ? arrivalsAvailabilities;
  // final List<Media> images; // TODO : UNCOMMENT WHEN IMPLEMENTED

  const RoomTypeEntity({
    this.name,
    this.description,
    this.price,
    this.arrivalsAvailabilities,
    // required this.images, // TODO : UNCOMMENT WHEN IMPLEMENTED
  });
}