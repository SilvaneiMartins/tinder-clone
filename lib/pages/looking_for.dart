import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/lifestyle_habits.dart';
import 'package:tinder_clone/service/support_widget.dart';

class LookingFor extends StatefulWidget {
  final String name, age, gender, orientation, interested;
  const LookingFor({
    super.key,
    required this.age,
    required this.gender,
    required this.name,
    required this.orientation,
    required this.interested,
  });

  @override
  State<LookingFor> createState() => _LookingForState();
}

class _LookingForState extends State<LookingFor> {
  bool longterm = false,
      opentoshort = false,
      shortterm = false,
      shortfun = false,
      friends = false,
      still = false;

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
              "What are you looking\nfor?",
              style: AppWidget.whiteBoldTextStyle(30.0),
            ),
            SizedBox(height: 10.0),
            Text(
              "All good if it changes. There's something for everyone",
              style: AppWidget.whiteLightTextStyle(16.0),
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                longterm
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/heart.png",
                          "Long-term\nPartner",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = true;
                            opentoshort = false;
                            shortterm = false;
                            shortfun = false;
                            friends = false;
                            still = false;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/heart.png",
                            "Long-term\nPartner",
                          ),
                        ),
                      ),
                SizedBox(width: 10.0),
                opentoshort
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/love.png",
                          "Long-term\nopen to short",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = false;
                            opentoshort = true;
                            shortterm = false;
                            shortfun = false;
                            friends = false;
                            still = false;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/love.png",
                            "Long-term\nopen to short",
                          ),
                        ),
                      ),
                SizedBox(width: 10.0),
                shortterm
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/soft-drink.png",
                          "Short-term\nopen to long",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = false;
                            opentoshort = false;
                            shortterm = true;
                            shortfun = false;
                            friends = false;
                            still = false;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/soft-drink.png",
                            "Short-term\nopen to long",
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                shortfun
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/party.png",
                          "Short-term fun",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = false;
                            opentoshort = false;
                            shortterm = false;
                            shortfun = true;
                            friends = false;
                            still = false;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/party.png",
                            "Short-term fun",
                          ),
                        ),
                      ),
                SizedBox(width: 10.0),
                friends
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/wave.png",
                          "New friends",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = false;
                            opentoshort = false;
                            shortterm = false;
                            shortfun = false;
                            friends = true;
                            still = false;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/wave.png",
                            "New friends",
                          ),
                        ),
                      ),
                SizedBox(width: 10.0),
                still
                    ? Flexible(
                        fit: FlexFit.tight,
                        child: AppWidget.highlightedlookingforContainer(
                          "images/thinking.png",
                          "Still figuring it out",
                        ),
                      )
                    : Flexible(
                        fit: FlexFit.tight,
                        child: GestureDetector(
                          onTap: () {
                            longterm = false;
                            opentoshort = false;
                            shortterm = false;
                            shortfun = false;
                            friends = false;
                            still = true;
                            setState(() {});
                          },
                          child: AppWidget.lookingforContainer(
                            "images/thinking.png",
                            "Still figuring it out",
                          ),
                        ),
                      ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LifeStyleHabits(
                      age: widget.age,
                      gender: widget.gender,
                      intrested: widget.interested,
                      name: widget.name,
                      orientation: widget.orientation,
                      lookingfor: longterm
                          ? "Long-term Partner"
                          : opentoshort
                          ? "Long-term open to short"
                          : shortterm
                          ? "Short-term open to long"
                          : shortfun
                          ? "Short-term fun"
                          : friends
                          ? "New Friends"
                          : "Still figuring it out",
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
                    "Next",
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
