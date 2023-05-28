import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/model/ml_model.dart';
import 'package:permission_handler/permission_handler.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  File? _image;
  List<Map<String, dynamic>>? _result;
  bool loading = false;

  Future<void> getPrediction(File image) async {
    MLModel model = MLModel();
    await model.loadModel();
    List<Map<String, dynamic>> result = await model.runModelOnImage(image);
    setState(() {
      _result = result;
    });
  }

  Future<void> pickImage(ImageSource source) async {
    final imagePicker = ImagePicker();
    final permissionStatus = await Permission.camera.status;
    if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
      Permission.camera.request();
    } else {
      final pickedFile = await imagePicker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _image = File(pickedFile.path);
          loading = true;
        });

        await getPrediction(_image!);
        setState(() {
          loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 1080;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: Text('Skin Disease Detection'),
        backgroundColor: Color(0xffd0bcff),
      ),
      backgroundColor: Color(0xfff0faff),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                onPressed: () async {
                  final result = await showDialog<ImageSource>(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: Text('Choose an option'),
                        children: <Widget>[
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context, ImageSource.camera);
                            },
                            child: Text('Take a photo'),
                          ),
                          SimpleDialogOption(
                            onPressed: () {
                              Navigator.pop(context, ImageSource.gallery);
                            },
                            child: Text('Choose from gallery'),
                          ),
                        ],
                      );
                    },
                  );

                  if (result != null) {
                    pickImage(result);
                  }
                },
                child: Text(
                  'Select an Image',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              if (_image != null) Image.file(_image!),
              SizedBox(height: 16),
              if(loading)Center(child: CircularProgressIndicator()),
              if (_result != null) ...[
                Text(
                  'Prediction Results:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                ..._result!
                    .map(
                      (r) => Text(
                    '${r['label']}: ${(r['confidence'] * 100).toStringAsFixed(2)}%',
                    style: TextStyle(fontSize: 16),
                  ),
                )
                    .toList(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
