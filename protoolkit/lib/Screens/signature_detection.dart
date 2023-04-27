import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class SignatureDetection extends StatefulWidget {
  const SignatureDetection({Key? key}) : super(key: key);

  @override
  _SignatureDetectionState createState() => _SignatureDetectionState();
}

class _SignatureDetectionState extends State<SignatureDetection> {
  File? _imageFile;
  String? _response;

  Future<void> _getImageFromCamera() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _uploadImage() async {
    final bytes = await _imageFile!.readAsBytes();
    final base64Image = base64Encode(bytes);

    final response = await http.post(
      Uri.parse('https://protoolkit-api.onrender.com/api/v1/openai/signature'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: '{"image": "$base64Image"}',
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body) as Map<String, dynamic>;
      final base64Response = responseData['signature'] as String;
      final decodedBytes = base64Decode(base64Response);
      final decodedText = utf8.decode(decodedBytes);

      setState(() {
        _response = decodedText;
      });
    } else {
      throw Exception('Failed to upload image');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Upload'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _imageFile != null
                ? Image.file(_imageFile!, fit: BoxFit.cover)
                : Placeholder(fallbackHeight: 200),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _getImageFromCamera,
                child: Icon(Icons.camera_alt),
              ),
              ElevatedButton(
                onPressed: _getImageFromGallery,
                child: Icon(Icons.photo),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _imageFile != null ? _uploadImage : null,
            child: Text('Upload Image'),
          ),
          if (_response != null)
            Expanded(
              child: Image.memory(base64Decode(_response!), fit: BoxFit.cover),
            ),
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(8),
            ),
            child: _response != null
                ? Text(
                    _response!,
                    style: TextStyle(fontSize: 18),
                  )
                : Text('No response'),
          ),
        ],
      ),
    );
  }
}
