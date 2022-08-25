import 'package:flutter/material.dart';

class ControlsBar extends StatelessWidget {
  const ControlsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)),
      ],
    );
  }
}
