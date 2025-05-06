import 'package:flutter/material.dart';
import 'package:test_app/Widgets/login_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  const Text("Flutter Demo App",style: TextStyle(color: Colors.blueAccent),),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text('Create Account',style: TextStyle(color: Colors.white, fontSize: 24)),
            const SizedBox(height: 20),
            const Icon(Icons.account_circle, size: 80, color: Colors.white),
            const SizedBox(height: 30),
            LoginBox()
          ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      ));
  }
}