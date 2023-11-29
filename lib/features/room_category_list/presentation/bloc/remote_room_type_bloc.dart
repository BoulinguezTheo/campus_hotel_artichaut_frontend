import 'package:campus_hotel_artichaut_frontend/core/ressources/data_state.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_romm_type_event.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_room_type_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_room_type.dart';

class RemoteRoomTypeListBloc extends Bloc<RemoteRoomTypeEvent, RemoteRoomTypeState> {
  final GetRoomTypeUseCase _getRoomTypeUseCase;
  RemoteRoomTypeListBloc(this._getRoomTypeUseCase) : super(const RemoteRoomTypeLoading()) {
    on <GetRoomTypeList> (onGetRoomTypeList);
  }

  void onGetRoomTypeList(GetRoomTypeList event, Emitter<RemoteRoomTypeState> emit) async {
    final dataState = await _getRoomTypeUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteRoomTypeDone(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(RemoteRoomTypeError(dataState.error!));
    }
  }
}