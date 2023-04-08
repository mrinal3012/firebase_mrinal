import 'package:firebase_mrinal/screen/singin_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Please input your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 40,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Please input your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text("Sing Up")),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  SingInPage(),));
            }, child: Text("Go to Sing In"))
          ],
        ),
      ),
    );
  }
}
