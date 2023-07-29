import 'package:flutter/material.dart';

class ConnectedWidget extends StatelessWidget {
  final String connectionType;

  const ConnectedWidget({
    super.key,
    required this.connectionType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.wifi,
          size: 100,
        ),
        Text(
          '$connectionType Connected',
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
