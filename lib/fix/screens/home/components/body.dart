import 'dart:js';
import 'package:first_project/fix/const.dart';
import 'package:first_project/fix/screens/home/components/movie_card.dart';
import 'package:first_project/fix/screens/home/components/movie_carousel.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: kDefaultPadding,),
        MovieCarousel(),
      ],
    );
  }
}
