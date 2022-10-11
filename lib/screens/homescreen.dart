import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Mon todo")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data')
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {

      },
      child:Icon(Icons.add),)
    );
  }
}
