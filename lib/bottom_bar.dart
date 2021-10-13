import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget _navigationIcon(IconData icon, String iconText) {
  return Column(
    children: [
      Icon(
        icon,
        size: 35,
        color: Colors.black54,
      ),
      Text(
        iconText,
        style: const TextStyle(
          fontSize: 15,
        ),
      )
    ],
  );
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
          height: (MediaQuery.of(context).orientation == Orientation.landscape)
              ? MediaQuery.of(context).size.width * 0.085
              : MediaQuery.of(context).size.height * 0.085,
          width: MediaQuery.of(context).size.width,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navigationIcon(Icons.search_outlined, "Search"),
                _navigationIcon(Icons.note_add_outlined, "Збережене"),
                _navigationIcon(Icons.shopping_bag_outlined, "Бронювання"),
                Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          image: DecorationImage(
                              image: AssetImage("images/img.png"),
                              fit: BoxFit.cover)),
                    ),
                    const Text(
                      "Профіль",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ])),
    );
  }
}
