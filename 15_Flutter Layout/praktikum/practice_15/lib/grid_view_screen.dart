import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({Key? key}) : super(key: key);
  List icons = [
    Icons.pets,
    Icons.pregnant_woman,
    Icons.spatial_audio_off,
    Icons.rounded_corner,
    Icons.rowing,
    Icons.timeline,
    Icons.update,
    Icons.access_time_filled,
    Icons.back_hand,
    Icons.euro,
    Icons.g_translate,
    Icons.remove_shopping_cart,
    Icons.restore_page,
    Icons.speaker_notes_off,
    Icons.delete_forever,
    Icons.accessibility,
    Icons.check_circle_outline,
    Icons.delete_outline,
    Icons.done_outline,
    Icons.maximize,
    Icons.minimize,
    Icons.offline_bolt_rounded,
    Icons.swap_horizontal_circle,
    Icons.accessible_forward,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: icons.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Icon(
                    icons[index],
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
