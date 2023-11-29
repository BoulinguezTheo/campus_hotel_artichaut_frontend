class ReservationDTO {
  final int customerId;
  final String roomName;
  final DateTime startDate;
  final DateTime endDate;
  final int numberOfPersons;

  ReservationDTO(this.customerId, this.roomName, this.startDate, this.endDate,
      this.numberOfPersons);
}