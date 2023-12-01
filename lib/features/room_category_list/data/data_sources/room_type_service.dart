import 'package:campus_hotel_artichaut_frontend/features/room_category_list/data/models/room_type.dart';
import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'room_type_service.g.dart';

@RestApi(baseUrl: ConstantsApp.BASE_URL_PROD)
abstract class RoomTypeService {
  factory RoomTypeService(Dio dio) = _RoomTypeService;

  @GET('/room-type')
  Future <HttpResponse<List<RoomTypeModel>>> getRoomTypeList();
}

