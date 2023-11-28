import 'package:campus_hotel_artichaut_frontend/utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/description_widgets/description-text.dart';
import 'package:campus_hotel_artichaut_frontend/views/homepage_widgets/description_widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';
import 'description_widgets/photo_grid.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          ConstantsApp.DISCOVER_TITLE,
          style: Theme.of(context).textTheme.titleLarge
        ),
        SizedBox(
          height: 1.vh,
        ),
        MyPhotoGrid(),
        SizedBox(
          height: 1.vh,
        ),
        const MyDescriptionText(),
        SizedBox(
          height: 1.vh,
        ),
        Text(
            ConstantsApp.DISCOVER_TITLE_ELEGANCE,
            style: Theme.of(context).textTheme.titleLarge
        ),
        SizedBox(
          height: 1.vh,
        ),
        const MyVideoPlayer(videoUrl: 'https://www.youtube.com/watch?v=y_j2nhAJQtY')
      ],
    );
  }
}
