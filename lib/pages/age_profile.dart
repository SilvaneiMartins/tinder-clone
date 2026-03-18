import "package:flutter/material.dart";

import "package:tinder_clone/service/support_widget.dart";

class AgeProfile extends StatefulWidget {
  const AgeProfile({super.key});

  @override
  State<AgeProfile> createState() => _AgeProfileState();
}

class _AgeProfileState extends State<AgeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.0),
            Text(
              "Qual é o sua idade?",
              style: AppWidget.whiteBoldTextStyle(34.0),
            ),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            Text(
              "Seu perfil mostrar sua sua idade.",
              style: AppWidget.whiteLightTextStyle(11.0),
            ),
            Spacer(),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Text(
                  "Próximo",
                  style: AppWidget.blackBoldTextStyle(20.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
