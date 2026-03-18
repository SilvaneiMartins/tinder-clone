import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/intrested_profile.dart';
import 'package:tinder_clone/service/support_widget.dart';

class SexualOrientation extends StatefulWidget {
  final String name, age, gender;

  const SexualOrientation({
    super.key,
    required this.age,
    required this.gender,
    required this.name,
  });

  @override
  State<SexualOrientation> createState() => _SexualOrientationState();
}

class _SexualOrientationState extends State<SexualOrientation> {
  bool straight = false, gay = false, lesbian = false, bisexual = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.0),
            Text(
              "Qual é a sua orientação sexual?",
              style: AppWidget.whiteBoldTextStyle(27.0),
            ),
            SizedBox(height: 20.0),
            Text(
              "Selecione uma opções que descreve você para refletir sua identidade.",
              style: AppWidget.whiteLightTextStyle(14),
            ),
            SizedBox(height: 10.0),
            straight
                ? AppWidget.highlightedContainer(
                    context,
                    "Heterosexual",
                    "Uma pessoa que sente atração exclusiva por pessoas do sexo oposto.",
                  )
                : GestureDetector(
                    onTap: () {
                      straight = true;
                      gay = false;
                      lesbian = false;
                      bisexual = false;
                      setState(() {});
                    },
                    child: AppWidget.normalContainer(
                      context,
                      "Heterosexual",
                      "Uma pessoa que sente atração exclusiva por pessoas do sexo oposto.",
                    ),
                  ),
            SizedBox(height: 20.0),
            gay
                ? AppWidget.highlightedContainer(
                    context,
                    "Gay",
                    "Um termo abrangente usado para descrever alguém que se sente atraído por pessoas do mesmo sexo.",
                  )
                : GestureDetector(
                    onTap: () {
                      straight = false;
                      gay = true;
                      lesbian = false;
                      bisexual = false;
                      setState(() {});
                    },
                    child: AppWidget.normalContainer(
                      context,
                      "Gay",
                      "Um termo abrangente usado para descrever alguém que se sente atraído por pessoas do mesmo sexo.",
                    ),
                  ),
            SizedBox(height: 20.0),
            lesbian
                ? AppWidget.highlightedContainer(
                    context,
                    "Lésbica",
                    "Uma mulher que sente atração emocional, romântica ou sexual por outra mulher.",
                  )
                : GestureDetector(
                    onTap: () {
                      straight = false;
                      gay = false;
                      lesbian = true;
                      bisexual = false;
                      setState(() {});
                    },
                    child: AppWidget.normalContainer(
                      context,
                      "Lésbica",
                      "Uma mulher que sente atração emocional, romântica ou sexual por outra mulher.",
                    ),
                  ),
            SizedBox(height: 20.0),
            bisexual
                ? AppWidget.highlightedContainer(
                    context,
                    "Bissexual",
                    "Uma pessoa que tem potencial para atração emocional, romântica ou sexual por pessoas de mais de um gênero.",
                  )
                : GestureDetector(
                    onTap: () {
                      straight = false;
                      gay = false;
                      lesbian = false;
                      bisexual = true;
                      setState(() {});
                    },
                    child: AppWidget.normalContainer(
                      context,
                      "Bissexual",
                      "Uma pessoa que tem potencial para atração emocional, romântica ou sexual por pessoas de mais de um gênero.",
                    ),
                  ),
            Spacer(),
            GestureDetector(
              onTap: () {
                if (straight || gay || lesbian || bisexual) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntrestedProfile(
                        age: widget.age,
                        gender: widget.gender,
                        name: widget.name,
                        orientation: straight
                            ? "Hetero"
                            : gay
                            ? "Gay"
                            : lesbian
                            ? "Lésbica"
                            : "Bissexual",
                      ),
                    ),
                  );
                }
              },
              child: Container(
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
            ),
            SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
