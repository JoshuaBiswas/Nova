import 'package:flutter/material.dart';

class ThumbnailOverlay extends StatelessWidget {
  const ThumbnailOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    color: Color.fromARGB(255, 98, 98, 98),
                    child: Icon(Icons.play_arrow, color: Colors.white))),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Text("7:36")),
            ),
          ],
        ));
  }
}
