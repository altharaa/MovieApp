import 'package:first_project/lama/HomePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget myText(String label, bool isObscure) {
      return Container(
        margin: EdgeInsets.all(10),
        child: TextField(
          obscureText: isObscure,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(),
          ),
        ),
      );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Application"),
      ),
      body: Center(
        child: Column(
          children: [
            myText("Username", false),
            myText("Password", true),

          //  Button
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }, child: Text('Login')),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: () {}, child: Text('Register')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
