import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FabCupWidget extends StatelessWidget {
  final VoidCallback onPressedAction;

  const FabCupWidget({Key? key, required this.onPressedAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedAction,
      child: const Icon(Icons.thumb_up),
      backgroundColor: Colors.pink,
    );
  }
}
