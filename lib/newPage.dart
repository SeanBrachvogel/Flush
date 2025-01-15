import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart'; // Add this dependency to pubspec.yaml

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  String _modelStatus = "Model not loaded";

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  Future<void> _loadModel() async {
    try {
      String? result = await Tflite.loadModel(
        model: "assets/1.tflite",
      );
      setState(() {
        _modelStatus = result == null ? "Model failed to load" : "Model loaded successfully";
      });
    } catch (e) {
      setState(() {
        _modelStatus = "Error loading model: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My New Screen'),
      ),
      body: Center(
        child: Text(
          _modelStatus,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
