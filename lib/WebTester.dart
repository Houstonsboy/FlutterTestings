import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: WebTester(),
  ));
}

class WebTester extends StatefulWidget {
  const WebTester({Key? key}) : super(key: key);

  @override
  _WebTesterState createState() => _WebTesterState();
}

class _WebTesterState extends State<WebTester> {
  late String authUrl = '';

  @override
  void initState() {
    super.initState();
    fetchAuthUrl();
  }

  Future<void> fetchAuthUrl() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.163.3:5000/login'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final authUrl = data['auth_url'];
        setState(() {
          this.authUrl = authUrl;
        });
      } else {
        throw Exception('Failed to load auth URL');
      }
    } catch (e) {
      print('Error fetching auth URL: $e');
      // Handle error as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Web Tester"),
      ),
      body: authUrl.isNotEmpty
          ? WebView(
              key: UniqueKey(),
              initialUrl: authUrl,
              javascriptMode: JavascriptMode.unrestricted,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
