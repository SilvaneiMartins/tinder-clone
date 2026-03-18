import "package:flutter/material.dart";
import "package:tinder_clone/service/support_widget.dart";

class NameProfile extends StatefulWidget {
  const NameProfile({super.key});

  @override
  State<NameProfile> createState() => _NameProfileState();
}

class _NameProfileState extends State<NameProfile> {
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
              "Qual é o seu primeiro nome?",
              style: AppWidget.whiteBoldTextStyle(34.0),
            ),
            SizedBox(height: 10.0),
            TextField(),
            SizedBox(height: 10.0),
            Text(
              "Nome que vai aparecer no seu perfil. Não será possível alterar isso depois.",
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
