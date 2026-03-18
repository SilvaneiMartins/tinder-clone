import 'package:flutter/material.dart';
import 'package:tinder_clone/service/support_widget.dart';

class GenderProfile extends StatefulWidget {
  const GenderProfile({super.key});

  @override
  State<GenderProfile> createState() => _GenderProfileState();
}

class _GenderProfileState extends State<GenderProfile> {
  bool man = false, woman = false, binary = false;

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
              "Qual é o seu gênero?",
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
                      binary = false;
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
            SizedBox(height: 10),
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
                      binary = false;
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
            SizedBox(height: 10),
            binary
                ? Container(
                    padding: EdgeInsets.all(13),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFF0050), width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Outros Gêneros",
                      style: AppWidget.whiteBoldTextStyle(18.0),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      man = false;
                      woman = false;
                      binary = true;
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
                        "Outros Gêneros",
                        style: AppWidget.whiteBoldTextStyle(18.0),
                      ),
                    ),
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
