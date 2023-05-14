import 'dart:io';
import 'package:tflite_flutter/tflite_flutter.dart';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';


class Benefits extends StatefulWidget {
  const Benefits({Key? key}) : super(key: key);

  @override
  _BenefitsState createState() => _BenefitsState();
}

class _BenefitsState extends State<Benefits> {
  late bool _loading;
  late File _image = File('');

 late List<dynamic> _outputs = [];


  final _imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loading = true;
    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  Future<void> loadModel() async {
    await Tflite.loadModel(
      model: "assets/images/model_unquant.tflite",
      labels: "assets/images/labels.txt",
    );
  }

  Future<void> pickImage() async {
  final pickedFile = await _imagePicker.getImage(source: ImageSource.camera);
  if (pickedFile == null) return; 

  setState(() {
    _loading = true;
    _image = File(pickedFile.path);
  });
    
  classifyImage(_image);
}




  Future<void> classifyImage(File image) async {
    final output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
   if (output != null && output.isNotEmpty) {
    setState(() {
      _loading = false;
      _outputs = output;
    });
  } else {
    setState(() {
    _loading = false;
    _outputs = [];
  });
  print('Classification output is empty.');
  }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 _image == null || _image.path.isEmpty
  ? Container(
      alignment: Alignment.center,
      child: Text(
        'No image selected. Please upload an image by clicking on the camera icon below.',
        textAlign: TextAlign.center,
      ),
    )
  : Container(
      child: Image.file(_image),
      height: 500,
      width: MediaQuery.of(context).size.width - 200,
    ),

                  SizedBox(
                    height: 20,
                  ),
                    _outputs.isNotEmpty
                      ? Text(
                          "${_outputs[0]["label"]}"
                              .replaceAll(RegExp(r'[0-9]'), ''),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        )
                      : const Text("click the pic of your diseased leaf"),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: 'Increment',
        child: Icon(Icons.camera),
      ),
    );
  }
}



/*val conditions = CustomModelDownloadConditions.Builder()
    .requireWifi()
    .build()
FirebaseModelDownloader.getInstance()
    .getModel("prjectk", DownloadType.LOCAL_MODEL, conditions)
    .addOnCompleteListener {
      // Download complete. Depending on your app, you could enable the ML
      // feature, or switch from the local model to the remote model, etc.
    }
    */