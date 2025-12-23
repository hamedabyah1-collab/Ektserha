import 'package:flutter/material.dart';

void main() {
  runApp(EkhtesarhaApp());
}

class EkhtesarhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'اختصرها',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  String _summary = '';

  void _summarize() {
    setState(() {
      _summary = 'هنا سيظهر التلخيص…'; // مؤقت، لاحقًا نضيف AI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اختصرها')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'اكتب النص هنا',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _summarize,
              child: Text('اختصر'),
            ),
            SizedBox(height: 16),
            Text(
              _summary,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
