import 'package:mobile_lab2/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget _inputField(BuildContext context, IconData icon, String inputText) {
  return SizedBox(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.9,
    child: TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orangeAccent, width: 5.0),
          ),
          prefixIcon: Icon(icon),
          hintText: inputText,
          hintStyle: const TextStyle(fontSize: 20)),
    ),
  );
}

Widget _searchButton(BuildContext context) {
  return Container(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.9,
    height: (MediaQuery
        .of(context)
        .orientation == Orientation.landscape)
        ? MediaQuery
        .of(context)
        .size
        .height * 0.15
        : MediaQuery
        .of(context)
        .size
        .height * 0.08,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.orangeAccent, width: 5.0),
      color: Colors.blueAccent,
    ),
    child: const Text(
      "Шукати",
      style: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.w300),
    ),
  );
}

Widget _travelCheck(BuildContext context) {
  return SizedBox(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              "Я подорожую у справах",
              style: TextStyle(fontSize: 18),
            )),
        Checkbox(
          value: false,
          onChanged: (bool? value) {},
        ),
      ],
    ),
  );
}

Widget _covidBlock(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.5),
    ),
    height: MediaQuery
        .of(context)
        .size
        .height * 0.08,
    width: MediaQuery
        .of(context)
        .size
        .width * 0.9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Icon(
                Icons.info_outline_rounded,
                color: Colors.brown,
              )),
          Container(
              height: 40,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.6,
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "Коронавірус (COVID-19): підтримку",
                style: TextStyle(fontSize: 18),
              )),
        ]),
        Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(Icons.arrow_forward_ios_outlined)),
      ],
    ),
  );
}

Widget _inputSection(BuildContext context) {
  return Column(
    children: dataTemplates
        .map((dataTemplate) =>
        _inputField(context,
            dataTemplate.inputIcon, dataTemplate.inputText))
        .toList(),
  );
}

Widget _bookingSection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
        children: [
          _inputSection(context),
          _searchButton(context),
          _travelCheck(context),
          _covidBlock(context)]),
  );
}

class BookingSection extends StatelessWidget {
  const BookingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bookingSection(context);
  }
}
