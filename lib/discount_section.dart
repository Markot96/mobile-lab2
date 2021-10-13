import 'package:mobile_lab2/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget _discountItem(BuildContext context, String discountText,
    IconData discountIcon, String discountSecondText) {
  return Container(
    margin: const EdgeInsets.all(10),
    height: (MediaQuery.of(context).orientation == Orientation.landscape)
        ? MediaQuery.of(context).size.height * 0.5
        : MediaQuery.of(context).size.width * 0.5,
    width: (MediaQuery.of(context).orientation == Orientation.landscape)
        ? MediaQuery.of(context).size.height * 0.5
        : MediaQuery.of(context).size.width * 0.5,
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(color: Colors.grey, width: 0.6),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width:
              (MediaQuery.of(context).orientation == Orientation.landscape)
                  ? MediaQuery.of(context).size.width * 0.2
                  : MediaQuery.of(context).size.width * 0.3,
              child: Text(
                discountText,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Icon(discountIcon)
          ],
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: (MediaQuery.of(context).orientation == Orientation.landscape)
                ? MediaQuery.of(context).size.width * 0.35
                : MediaQuery.of(context).size.width * 0.5,
            child: Text(
              discountSecondText,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ))
      ],
    ),
  );
}

Widget _discountList(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: dataTemplates
          .map((dataTemplate) => _discountItem(
          context,
          dataTemplate.discountText,
          dataTemplate.discountIcon,
          dataTemplate.discountSecondText))
          .toList(),
    ),
  );
}


Widget _discountSection(BuildContext context){
  return  Column(
    children: [
      Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        child: const Text(
          "Подорожуйте більше, втрачайте менше",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Colors.black),
        ),
      ),_discountList(context)
    ],
  );
}

class DiscountSection extends StatelessWidget {
  const DiscountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _discountSection(context);
  }
}
