import '../../../../core/ressources/data_state.dart';
import '../entities/room_type_entity.dart';

abstract class RoomTypeRepository {

  Future<DataState<List<RoomTypeEntity>>> getRoomTypeList();
}