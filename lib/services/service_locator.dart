import 'package:campus_hotel_artichaut_frontend/features/room_category_list/data/data_sources/room_type_service.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/data/repository/room_type_repository_impl.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/domain/usecases/get_room_type.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_room_type_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:campus_hotel_artichaut_frontend/services/review_service.dart';

import '../features/room_category_list/domain/repository/room_type_repository.dart';

final GetIt getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<RoomTypeService>(RoomTypeService(getIt()));
  getIt.registerSingleton<RoomTypeRepository>(RoomTypeRepositoryImpl(getIt()));
  getIt.registerSingleton<GetRoomTypeUseCase>(GetRoomTypeUseCase(getIt()));
  getIt.registerFactory<RemoteRoomTypeListBloc>(
      () => RemoteRoomTypeListBloc(getIt()));
}

void setup() {
  getIt.registerSingleton<ReviewService>(ReviewService());
}
