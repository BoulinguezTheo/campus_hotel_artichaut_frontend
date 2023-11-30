import 'package:campus_hotel_artichaut_frontend/core/ressources/data_state.dart';
import 'package:campus_hotel_artichaut_frontend/core/usecases/usecase.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/domain/entities/room_type_entity.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/domain/repository/room_type_repository.dart';

class GetRoomTypeUseCase implements UseCase<DataState<List<RoomTypeEntity>>, void> {
  final RoomTypeRepository _roomTypeRepository;

  GetRoomTypeUseCase(this._roomTypeRepository);

  @override
  Future<DataState<List<RoomTypeEntity>>> call({params}) {
    return _roomTypeRepository.getRoomTypeList();
  }
}