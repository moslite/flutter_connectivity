import 'package:flutter/material.dart';

class DisconnectedWidget extends StatelessWidget {
  const DisconnectedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wifi_off_outlined,
          size: 100,
        ),
        Text(
          'No Internet Connection',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
