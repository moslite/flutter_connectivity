import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_connectivity/app/pages/home/widgets/connected_widget.dart';
import 'package:flutter_connectivity/app/pages/home/widgets/disconnected_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return switch (snapshot.data) {
                  ConnectivityResult.mobile => const ConnectedWidget(
                      connectionType: 'Mobile',
                    ),
                  ConnectivityResult.wifi => const ConnectedWidget(
                      connectionType: 'Wifi',
                    ),
                  _ => const DisconnectedWidget(),
                };
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
