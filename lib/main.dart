import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  
    final biodata = <String, String>{};

    MainApp({super.key}){
      biodata['name'] = 'Rumah Makan Sedap Rasa';
      biodata['email'] = 'akbar@gmail.com';
      biodata['phone'] = '00822281982';
      biodata['image'] = 'resto.jpg';
      biodata['hobby'] = 'gaming';
      biodata['addr'] = 'pustim 11';
      biodata['desc'] = '''lorem ipsum lorem ipsum lorem ipsum lorem ipsum ''';
    }
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rm. Sedap Rasa",
      home: Scaffold(
        appBar: AppBar(title: const Text("Rm. Sedap Rasa")),
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
                SizedBox(height: 10),
                Row(children: [
                  btnContact(Icons.alternate_email, Colors.green[900]),
                  btnContact(Icons.mark_email_unread_rounded, Colors.blueAccent),
                  btnContact(Icons.phone, Colors.deepPurple),
                   
                ],
                ),
                SizedBox(height: 10),
            ]),
        ),
      ),
    );
  }

  Expanded btnContact(IconData icon, var color) {
    return Expanded(
                  child: ElevatedButton(onPressed: (){},
                   child: Icon(icon),
                   style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                   )
                   ),
                );
  }
}
