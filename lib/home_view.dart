import 'dart:ui';

import 'package:mobile_lab2/app_bar.dart';
import 'package:mobile_lab2/boking_section.dart';
import 'package:mobile_lab2/bottom_bar.dart';
import 'package:mobile_lab2/discount_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight:
              (MediaQuery.of(context).orientation == Orientation.landscape)
                  ? MediaQuery.of(context).size.height * 0.18
                  : MediaQuery.of(context).size.height * 0.115,
          backgroundColor: const Color.fromRGBO(0, 53, 128, 1),
          title: const AppBarNavigation()),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              BookingSection(),
              DiscountSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
