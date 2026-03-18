import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/pics_page.dart';
import 'package:tinder_clone/service/support_widget.dart';

class LifeStyleHabits extends StatefulWidget {
  final String name, age, orientation, gender, intrested, lookingfor;
  const LifeStyleHabits({
    super.key,
    required this.age,
    required this.gender,
    required this.intrested,
    required this.name,
    required this.orientation,
    required this.lookingfor,
  });

  @override
  State<LifeStyleHabits> createState() => _LifeStyleHabitsState();
}

class _LifeStyleHabitsState extends State<LifeStyleHabits> {
  String? drinkoption, smokeoption, workoutoption, petoption;

  Widget questionDrink() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.local_drink,
              color: const Color.fromARGB(103, 255, 255, 255),
              size: 18,
            ),
            SizedBox(width: 10.0),
            Text(
              "Com que frequência você bebe?",
              style: AppWidget.whiteBoldTextStyle(14.0),
            ),
          ],
        ),

        SizedBox(height: 20.0),
        Row(
          children: [
            drinkoption == "Não é para mim."
                ? AppWidget.selectedoptionLifeStyle("Não é para mim.")
                : GestureDetector(
                    onTap: () {
                      drinkoption = "Não é para mim.";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Não é para mim."),
                  ),
            SizedBox(width: 10.0),
            drinkoption == "Sóbrio"
                ? AppWidget.selectedoptionLifeStyle("Sóbrio")
                : GestureDetector(
                    onTap: () {
                      drinkoption = "Sóbrio";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Sóbrio"),
                  ),
            SizedBox(width: 10.0),
            drinkoption == "Curioso"
                ? AppWidget.selectedoptionLifeStyle("Curioso")
                : GestureDetector(
                    onTap: () {
                      drinkoption = "Curioso";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Curioso"),
                  ),
          ],
        ),
        SizedBox(height: 10.0),
        Row(
          children: [
            drinkoption == "Somente á noites"
                ? AppWidget.selectedoptionLifeStyle("Somente á noites")
                : GestureDetector(
                    onTap: () {
                      drinkoption = "Somente á noites";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Somente á noites"),
                  ),
            SizedBox(width: 10.0),
            drinkoption == "Fins de semana"
                ? AppWidget.selectedoptionLifeStyle("Fins de semana")
                : GestureDetector(
                    onTap: () {
                      drinkoption = "Fins de semana";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Fins de semana"),
                  ),
          ],
        ),
      ],
    );
  }

  Widget questionSmoke() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              size: 18,
              Icons.smoke_free,
              color: const Color.fromARGB(103, 255, 255, 255),
            ),
            SizedBox(width: 10.0),
            Text(
              "Com que frequência você fuma?",
              style: AppWidget.whiteBoldTextStyle(14.0),
            ),
          ],
        ),

        SizedBox(height: 20.0),
        Row(
          children: [
            smokeoption == "Fumante social"
                ? AppWidget.selectedoptionLifeStyle("Fumante social")
                : GestureDetector(
                    onTap: () {
                      smokeoption = "Fumante social";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Fumante social"),
                  ),
            SizedBox(width: 10.0),
            smokeoption == "Fumante quando bebe"
                ? AppWidget.selectedoptionLifeStyle("Fumante quando bebe")
                : GestureDetector(
                    onTap: () {
                      smokeoption = "Fumante quando bebe";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Fumante quando bebe"),
                  ),
            SizedBox(width: 10.0),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            smokeoption == "Fumante"
                ? AppWidget.selectedoptionLifeStyle("Fumante")
                : GestureDetector(
                    onTap: () {
                      smokeoption = "Fumante";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Fumante"),
                  ),
            SizedBox(width: 10.0),
            smokeoption == "Não fumante"
                ? AppWidget.selectedoptionLifeStyle("Não fumante")
                : GestureDetector(
                    onTap: () {
                      smokeoption = "Não fumante";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Não fumante"),
                  ),
          ],
        ),
      ],
    );
  }

  Widget questionWorkout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              size: 18,
              Icons.work_outline,
              color: const Color.fromARGB(103, 255, 255, 255),
            ),
            SizedBox(width: 10.0),
            Text(
              "Você pratica exercícios físicos?",
              style: AppWidget.whiteBoldTextStyle(14.0),
            ),
          ],
        ),

        SizedBox(height: 20.0),
        Row(
          children: [
            workoutoption == "Diariamente"
                ? AppWidget.selectedoptionLifeStyle("Diariamente")
                : GestureDetector(
                    onTap: () {
                      workoutoption = "Diariamente";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Diariamente"),
                  ),
            SizedBox(width: 10.0),
            workoutoption == "Muitas vezes"
                ? AppWidget.selectedoptionLifeStyle("Muitas vezes")
                : GestureDetector(
                    onTap: () {
                      workoutoption = "Muitas vezes";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Muitas vezes"),
                  ),
            SizedBox(width: 10.0),
            workoutoption == "Às vezes"
                ? AppWidget.selectedoptionLifeStyle("Às vezes")
                : GestureDetector(
                    onTap: () {
                      workoutoption = "Às vezes";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Às vezes"),
                  ),
          ],
        ),
      ],
    );
  }

  Widget questionPets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              size: 18,
              Icons.pets,
              color: const Color.fromARGB(103, 255, 255, 255),
            ),
            SizedBox(width: 10.0),
            Text(
              "Você tem algum animal de estimação?",
              style: AppWidget.whiteBoldTextStyle(14.0),
            ),
          ],
        ),

        SizedBox(height: 20.0),
        Row(
          children: [
            petoption == "Cachorro"
                ? AppWidget.selectedoptionLifeStyle("Cachorro")
                : GestureDetector(
                    onTap: () {
                      petoption = "Cachorro";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Cachorro"),
                  ),
            SizedBox(width: 10.0),
            petoption == "Gato"
                ? AppWidget.selectedoptionLifeStyle("Gato")
                : GestureDetector(
                    onTap: () {
                      petoption = "Gato";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Gato"),
                  ),
            SizedBox(width: 10.0),
            petoption == "Passaro"
                ? AppWidget.selectedoptionLifeStyle("Passaro")
                : GestureDetector(
                    onTap: () {
                      petoption = "Passaro";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Passaro"),
                  ),
            SizedBox(width: 10.0),
            petoption == "Réptil"
                ? AppWidget.selectedoptionLifeStyle("Réptil")
                : GestureDetector(
                    onTap: () {
                      petoption = "Réptil";
                      setState(() {});
                    },
                    child: AppWidget.optionLifeStyle("Réptil"),
                  ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              "Vamos falar sobre estilo de vida/hábitos.",
              style: AppWidget.whiteBoldTextStyle(20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "Os hábitos deles combinam com os seus? Você começa.",
              style: AppWidget.whiteLightTextStyle(12.0),
            ),
            SizedBox(height: 10.0),
            Divider(
              color: const Color.fromARGB(103, 255, 255, 255),
              thickness: 2.0,
            ),
            SizedBox(height: 10.0),
            questionDrink(),
            SizedBox(height: 10.0),
            Divider(
              color: const Color.fromARGB(103, 255, 255, 255),
              thickness: 2.0,
            ),
            SizedBox(height: 10.0),
            questionSmoke(),
            SizedBox(height: 10.0),
            Divider(
              color: const Color.fromARGB(103, 255, 255, 255),
              thickness: 2.0,
            ),
            SizedBox(height: 10.0),
            questionWorkout(),
            SizedBox(height: 10.0),
            Divider(
              color: const Color.fromARGB(103, 255, 255, 255),
              thickness: 2.0,
            ),
            SizedBox(height: 10.0),
            questionPets(),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PicsPage(
                      age: widget.age,
                      gender: widget.gender,
                      name: widget.name,
                      orientation: widget.orientation,
                      intrested: widget.intrested,
                      drink: drinkoption!,
                      pet: petoption!,
                      smoke: smokeoption!,
                      workout: workoutoption!,
                      lookingfor: widget.lookingfor,
                    ),
                  ),
                );
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
