import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  
    final biodata = <String, String>{};

    MainApp({super.key}){
      biodata['name'] = 'Akbar Riawan';
      biodata['email'] = 'akbar@gmail.com';
      biodata['phone'] = '00822281982';
      biodata['image'] = 'gambar.jpg';
      biodata['hobby'] = 'gaming';
      biodata['addr'] = 'pustim 11';
      biodata['desc'] = '''lorem ipsum lorem ipsum lorem ipsum lorem ipsum ''';
    }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Biodata",
      home: Scaffold(
        appBar: AppBar(title: const Text("Aplikasi Biodata")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  biodata['name'] ?? '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                   fontSize: 20,
                    color: Colors.white),
                  ), 
                ),
                Image(image: AssetImage('assets/${biodata["image"] ?? ''}')),
            ]),
        ),
      ),
    );
  }
}
