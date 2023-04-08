import 'package:firebase_mrinal/screen/singup_page.dart';
import 'package:flutter/material.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {


  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Please input your email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Please input your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text("Sing In")),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  SingUpPage(),));
            }, child: Text("Go to Sing Up"))
          ],
        ),
      ),
    );
  }
}
