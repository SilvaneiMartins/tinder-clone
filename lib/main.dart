import 'package:flutter/material.dart';

import 'package:tinder_clone/pages/age_profile.dart';
import 'package:tinder_clone/pages/gender_profile.dart';
import 'package:tinder_clone/pages/intrested_profile.dart';
import 'package:tinder_clone/pages/lifestyle_habits.dart';
import 'package:tinder_clone/pages/login.dart';
import 'package:tinder_clone/pages/name_profile.dart';
import 'package:tinder_clone/pages/sexual_orientation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LifeStyleHabits(
        age: "47",
        gender: "Masculino",
        intrested: "Mulher",
        name: "Silvanei Martins",
        orientation: "Heterossesual",
        lookingfor: "Mulheres",
      ),
    );
  }
}
