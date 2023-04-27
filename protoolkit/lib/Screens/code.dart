import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> {
  String _inputValue = "Enter the Query";
  String _outputValue = "";
  bool _isLoading = false;

  Future<void> _translateCode() async {
    setState(() {
      _isLoading = true;
    });

    final response = await http.post(
      Uri.parse(
          'https://protoolkit-api.onrender.com/api/v1/openai/codeexplain'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: '{"text": "$_inputValue"}',
    );

    if (response.statusCode == 200) {
      setState(() {
        _outputValue = response.body;
        _isLoading = false;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      throw Exception('Failed to translate code');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey,
                ),
                margin: EdgeInsets.all(40),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: _inputValue,
                      border: InputBorder.none,
                    ),
                    onChanged: (newValue) {
                      _inputValue = newValue;
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _isLoading ? null : _translateCode,
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text('Translate'),
              ),
              if (_outputValue.isNotEmpty)
                Container(
                  margin: EdgeInsets.all(40),
                  height: 400,
                  width: 330,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(_outputValue),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
