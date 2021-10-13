import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataTemplate {
  String inputText;
  IconData inputIcon;
  String discountText;
  IconData discountIcon;
  String discountSecondText;


  DataTemplate(
      {this.inputText = '1 номер: 2 дорослих: 0 дітей',
        this.inputIcon = Icons.person_outline_outlined,
        this.discountText = 'Безкоштовні сніданки',
        this.discountIcon = Icons.lock_open_outlined,
        this.discountSecondText = "Завершіть 5 поїздок, щоб перейти на Genius 2-рівня"
     });
}

final  dataTemplates= [

  DataTemplate(
      inputText : 'Введіть свій напрямок',
      inputIcon : Icons.search_outlined,
      discountText : 'Знижки 10%',
      discountIcon : Icons.lock_open_outlined,
      discountSecondText : "Отримуйте знижки у відповідних"
  ),
  DataTemplate(
      inputText : 'пн, 11 жовтня - ср,13 жовтня',
      inputIcon : Icons.calendar_today_rounded,
      discountText : 'Знижки 15%',
      discountIcon : Icons.lock_open_outlined,
      discountSecondText : "Завершіть 5 поїздок, щоб перейти на Genius 2-рівня"
  ),

  DataTemplate(),

];
