import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_romm_type_event.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_room_type_bloc.dart';
import 'package:campus_hotel_artichaut_frontend/features/room_category_list/presentation/bloc/remote_room_type_state.dart';
import 'package:campus_hotel_artichaut_frontend/services/service_locator.dart';
import 'package:campus_hotel_artichaut_frontend/views/rooms_widgets/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyRoomTypeList extends StatelessWidget {
  const MyRoomTypeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteRoomTypeListBloc>(
      create: (context) => getIt()..add(const GetRoomTypeList()),
      child: _buildRoomType(),
    );
  }

  _buildRoomType() {
    return BlocBuilder<RemoteRoomTypeListBloc, RemoteRoomTypeState>(
        builder: (_, state) {
      if (state is RemoteRoomTypeLoading) {
        return const Center(child: CupertinoActivityIndicator());
      }
      if (state is RemoteRoomTypeError) {
        return const Center(child: Icon(Icons.refresh));
      }
      if (state is RemoteRoomTypeDone) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return MyCard(roomType: state.roomTypeList![index]);
          },
          itemCount: state.roomTypeList!.length,
        );
      }
      return const SizedBox();
    });
  }
}
