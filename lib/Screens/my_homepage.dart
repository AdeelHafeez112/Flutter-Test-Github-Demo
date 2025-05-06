import 'package:flutter/material.dart';
import 'package:test_app/Screens/second_screen.dart';

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
            const SizedBox(height: 30),
            const Icon(Icons.account_circle, size: 80, color: Colors.white),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person, color: Colors.blueAccent,),
                      hintText: 'Your Name',
                      hintStyle: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone, color: Colors.blueAccent,),
                      hintText: 'Phone no',
                      hintStyle: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget password ?',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      minimumSize: const Size.fromHeight(45),
                    ),
                    child: const Text('SIGN IN', style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      ));
  }
}