import 'dart:developer';
import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:myapp/tflite/classifier_float.dart';

import '../tflite/classifier.dart';

class MLModel {
  late Classifier _classifier;
  static final MLModel _instance = MLModel._internal();

  factory MLModel() => _instance;

  MLModel._internal();

  static List<Map<String, String>> categories = [
    {
      'id': '1',
      'label': 'Melanocytic nevi',
    },
    {
      'id': '2',
      'label': 'Melanoma',
    },
    {
      'id': '3',
      'label': 'Benign keratosis-like lesions',
    },
    {
      'id': '4',
      'label': 'Basal cell carcinoma',
    },
    {
      'id': '5',
      'label': 'Actinic keratoses',
    },
    {
      'id': '6',
      'label': 'Vascular lesions',
    },
    {
      'id': '7',
      'label': 'Dermatofibroma',
    },
  ];

  Future<void> loadModel() async {
    try {
      _classifier = ClassifierFloat();
    } catch (e) {
      print('Error loading model: $e');
    }
  }

  Future<List<Map<String, dynamic>>> runModelOnImage(File image) async {
    img.Image? imageInput = img.decodeImage(await image.readAsBytes());
    if (imageInput == null) {
      throw Exception('Invalid image file.');
    }

    Map<String, dynamic> res = _classifier.predict(imageInput);
    List<Map<String, dynamic>> results = [];
    res.forEach((key, value) {
      results.add({
        'label': key,
        'confidence': value,
      });
    });
    log('MK: res is ${results}');

    return results;
  }

  Future<File> pickImage({required ImageSource source}) async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.getImage(source: source);
    return File(pickedFile!.path);
  }
}
