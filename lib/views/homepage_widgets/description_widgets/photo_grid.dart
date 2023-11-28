import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scaled_size/scaled_size.dart';

class MyPhotoGrid extends StatelessWidget {
  MyPhotoGrid({super.key});
  final _photoDescriptionList = [
    'assets/images/Chamber.jpg',
    'assets/images/LivingRoom.jpg',
    'assets/images/kitchen_2.jpg',
    'assets/images/sswimming_pool_2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.vh,
      child: MasonryGridView.builder(
        itemCount: _photoDescriptionList.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
              child: Image.asset(_photoDescriptionList[index]),
          ),
        ),
      ),
    );
  }
}
