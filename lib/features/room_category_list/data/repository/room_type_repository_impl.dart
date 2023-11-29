import 'package:campus_hotel_artichaut_frontend/core/ressources/data_state.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/data/data_sources/room_type_service.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/domain/repository/room_type_repository.dart';
import 'package:dio/dio.dart';
import '../models/room_type.dart';

class RoomTypeRepositoryImpl implements RoomTypeRepository {
  final RoomTypeService _roomTypeService;
  RoomTypeRepositoryImpl(this._roomTypeService);

  @override
  Future<DataState<List<RoomTypeModel>>> getRoomTypeList() async {
    final httpResponse = await _roomTypeService.getRoomTypeList();
    print(httpResponse.data);
    
    try {
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
