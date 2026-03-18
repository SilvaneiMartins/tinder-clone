import 'package:flutter/material.dart';
import 'package:tinder_clone/service/support_widget.dart';

class PicsPage extends StatefulWidget {
  final String name,
      age,
      gender,
      orientation,
      intrested,
      drink,
      smoke,
      workout,
      pet,
      lookingfor;

  const PicsPage({
    super.key,
    required this.age,
    required this.gender,
    required this.name,
    required this.orientation,
    required this.intrested,
    required this.drink,
    required this.pet,
    required this.smoke,
    required this.workout,
    required this.lookingfor,
  });

  @override
  State<PicsPage> createState() => _PicsPageState();
}

class _PicsPageState extends State<PicsPage> {
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
              "Adicione suas fotos recentes",
              style: AppWidget.whiteBoldTextStyle(28.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Comece enviando 2 fotos. Adicione 4 ou mais para destacar seu perfil.",
              style: AppWidget.whiteLightTextStyle(16.0),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
