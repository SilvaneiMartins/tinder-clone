import 'package:flutter/material.dart';
import 'package:tinder_clone/service/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF0050),
              Color(0xFFFF4267),
              Color(0xFFFF7961),
              Color(0xFFFFA36C),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 70.0),
            Image.asset(
              "images/logo.png",
              height: 350,
              width: 350,
              fit: BoxFit.cover,
            ),
            Text(
              "Ao tocar em 'Continuar', você concorda com nossos termos. Saiba como organizamos o seu dia a dia em nossa equipe. Política de Privacidade e Política de Cookies",
              textAlign: TextAlign.center,
              style: AppWidget.whiteBoldTextStyle(15.0),
            ),
            SizedBox(height: 80.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              height: 70,
              margin: EdgeInsets.only(left: 40.0, right: 40.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "images/google1.png",
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    "Continua com Google",
                    style: AppWidget.blackBoldTextStyle(17.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
