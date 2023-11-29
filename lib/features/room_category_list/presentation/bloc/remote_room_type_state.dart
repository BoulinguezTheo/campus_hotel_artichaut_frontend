import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/room_type_entity.dart';

abstract class RemoteRoomTypeState extends Equatable{
  final List<RoomTypeEntity> ? roomTypeList;
  final DioException ? error;

  const RemoteRoomTypeState({this.roomTypeList, this.error});

  @override
  List<Object> get props => [roomTypeList!, error!];
}

class RemoteRoomTypeLoading extends RemoteRoomTypeState {
  const RemoteRoomTypeLoading();
}

class RemoteRoomTypeDone extends RemoteRoomTypeState {
  const RemoteRoomTypeDone(List<RoomTypeEntity> roomTypeList) : super(roomTypeList: roomTypeList);
}

class RemoteRoomTypeError extends RemoteRoomTypeState {
  const RemoteRoomTypeError(DioException error) : super(error: error);
}