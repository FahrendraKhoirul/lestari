import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LocationView extends GetView {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LocationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
