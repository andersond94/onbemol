import 'package:flutter/material.dart';


import 'form_login.dart';



class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    delay();
  }

  Future<void> delay() async {
    return await Future.delayed(
      Duration(seconds: 2),
      () {
        //realizar os tratamentos de login se o usuário marcar a opção lembrar-me
      Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => LoginPage()),
  (Route<dynamic> route) => false,
);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/logo_bedigital.png',
        fit: BoxFit.cover,
        height: 100,

      ),
      ),
    );
  }
}
