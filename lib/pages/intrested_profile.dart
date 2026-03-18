import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/looking_for.dart';
import 'package:tinder_clone/service/support_widget.dart';

class IntrestedProfile extends StatefulWidget {
  final String name, age, gender, orientation;

  const IntrestedProfile({
    super.key,
    required this.age,
    required this.gender,
    required this.name,
    required this.orientation,
  });

  @override
  State<IntrestedProfile> createState() => _IntrestedProfileState();
}

class _IntrestedProfileState extends State<IntrestedProfile> {
  bool man = false, woman = false, everyone = false;

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
              "Quem você tem interesse em ver?",
              style: AppWidget.whiteBoldTextStyle(28.0),
            ),
            SizedBox(height: 40.0),
            man
                ? Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF0050), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Homem",
                      style: AppWidget.whiteBoldTextStyle(18.0),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      man = true;
                      woman = false;
                      everyone = false;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(13),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(114, 255, 255, 255),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Homem",
                        style: AppWidget.whiteBoldTextStyle(18.0),
                      ),
                    ),
                  ),
            SizedBox(height: 20.0),
            woman
                ? Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF0050), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Mulher",
                      style: AppWidget.whiteBoldTextStyle(18.0),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      man = false;
                      woman = true;
                      everyone = false;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(13),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(114, 255, 255, 255),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Mulher",
                        style: AppWidget.whiteBoldTextStyle(18.0),
                      ),
                    ),
                  ),
            SizedBox(height: 20.0),
            everyone
                ? Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF0050), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Todos",
                      style: AppWidget.whiteBoldTextStyle(18.0),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      man = false;
                      woman = false;
                      everyone = true;
                      setState(() {});
                    },
                    child: Container(
                      padding: EdgeInsets.all(13),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(114, 255, 255, 255),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Todos",
                        style: AppWidget.whiteBoldTextStyle(18.0),
                      ),
                    ),
                  ),
            Spacer(),
            GestureDetector(
              onTap: () {
                if (man || woman || everyone) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LookingFor(
                        age: widget.age,
                        gender: widget.gender,
                        name: widget.name,
                        orientation: widget.orientation,
                        interested: man
                            ? "Homem"
                            : woman
                            ? "Mulher"
                            : "Todos",
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
