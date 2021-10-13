import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget _appScrollElement(IconData icon, String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [Icon(icon), Text(text,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),)],
    ),
  );
}

Widget _appBarNavigation(BuildContext context){
  return  Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: (MediaQuery.of(context).orientation ==
                    Orientation.landscape)
                    ? MediaQuery.of(context).size.height / 2.2
                    : MediaQuery.of(context).size.width / 8),
            child: const Text(
              "Booking.com",
              style:
              TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const Icon(
            Icons.messenger_outline_outlined,
            size: 30,
          ),
          const Icon(Icons.notifications_none_outlined, size: 30)
        ],
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _appScrollElement(Icons.bed_outlined, "Помешкання"),
            _appScrollElement(
                Icons.airplanemode_active_outlined, "Переліт"),
            _appScrollElement(
                Icons.directions_car_outlined, "Прокат автомобілів")
          ],
        ),
      )
    ],
  );
}



class AppBarNavigation extends StatelessWidget {
  const AppBarNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _appBarNavigation(context);
  }
}
