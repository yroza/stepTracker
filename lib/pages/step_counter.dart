import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class StepCounter extends StatefulWidget {
  const StepCounter({super.key});

  @override
  State<StepCounter> createState() => _StepCounterState();
}

class _StepCounterState extends State<StepCounter> {
  int _stepCount = 0;

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _stepCount++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('Steps: $_stepCount');
  }
}
