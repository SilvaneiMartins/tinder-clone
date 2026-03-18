import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle whiteBoldTextStyle(double size) {
    return TextStyle(
      color: Colors.white,
      fontFamily: "Poppins",
      fontSize: size,
    );
  }

  static TextStyle blackBoldTextStyle(double size) {
    return TextStyle(
      color: Colors.black,
      fontFamily: "Poppins",
      fontSize: size,
    );
  }

  static TextStyle whiteLightTextStyle(double size) {
    return TextStyle(
      color: const Color.fromARGB(129, 255, 255, 255),
      fontFamily: "Poppins",
      fontSize: size,
    );
  }

  static Widget normalContainer(
    BuildContext context,
    String nome,
    String descricao,
  ) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(114, 255, 255, 255),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nome, style: AppWidget.whiteBoldTextStyle(16.0)),
          Text(descricao, style: AppWidget.whiteLightTextStyle(12.0)),
        ],
      ),
    );
  }

  static Widget highlightedContainer(
    BuildContext context,
    String name,
    String desc,
  ) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFF0050), width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: AppWidget.whiteBoldTextStyle(16.0)),
          Text(desc, style: AppWidget.whiteLightTextStyle(12.0)),
        ],
      ),
    );
  }

  static Widget lookingforContainer(String image, String name) {
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(147, 255, 255, 255),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
            SizedBox(height: 10.0),
            Text(
              name,
              textAlign: TextAlign.center,
              style: AppWidget.whiteBoldTextStyle(12.0),
            ),
          ],
        ),
      ),
    );
  }

  static Widget highlightedlookingforContainer(String image, String name) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFF0050), width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
          SizedBox(height: 10.0),
          Text(
            name,
            textAlign: TextAlign.center,
            style: AppWidget.whiteBoldTextStyle(12.0),
          ),
        ],
      ),
    );
  }

  static Widget optionLifeStyle(String name) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(103, 255, 255, 255),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(name, style: AppWidget.whiteLightTextStyle(12.0)),
    );
  }

  static Widget selectedoptionLifeStyle(String name) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 7.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Text(name, style: AppWidget.whiteBoldTextStyle(12.0)),
    );
  }
}
