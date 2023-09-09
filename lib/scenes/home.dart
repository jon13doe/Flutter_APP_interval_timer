import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  double _currentSliderValue = 100.0;
  bool isVolumeMuted = false;

  void toggleVolume() {
    setState(() {
      isVolumeMuted = !isVolumeMuted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press here
          },
        ),
        title: Slider(
          value: _currentSliderValue,
          onChanged: (newValue) {
            // Handle volume slider changes here
            setState(() {
              isVolumeMuted = newValue == 0.0;
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(isVolumeMuted ? Icons.volume_off : Icons.volume_up),
            onPressed: toggleVolume,
          ),
        ],
      ),
    );
  }
}
