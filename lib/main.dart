import 'package:first_test/dbHelper/mongodb.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child : Text('TodoList', style: TextStyle(fontSize: 30),
           ),
        ),
      ),
      body: Column(
        children: [
       Container(
        color: Colors.green,
      ),
      SizedBox(height: 20),
      Text('tôi là đoạn văn',
      style: TextStyle(fontSize: 20),
      ),
        ],
      ),
    );
  }
}


