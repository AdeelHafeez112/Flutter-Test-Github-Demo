import 'package:flutter/material.dart';
import 'package:test_app/Screens/second_screen.dart';

class LoginBox extends StatelessWidget {
  const LoginBox({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Container(
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
    );
  }
}