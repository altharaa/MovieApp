import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'movie_card.dart';
import 'package:first_project/fix/const.dart';

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

static PageController _pageController;
static int initialPage = 1;

class _MovieCarouselState extends State<MovieCarousel> {

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          physics: ClampingScrollPhysics(),
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index),
        ),
      ),
    );
  }
}

Widget buildMovieSlider(int index) => AnimatedBuilder(
  animation: _pageController,
  builder: (context, child) {
    double value = 0;
    if (_pageController.position.haveDimensions) {
      value = index - _pageController.page;
      value = (value * 0.038).clamp(-1, 1);
    }

    return AnimatedOpacity(
      opacity: initialPage == index ? 1 : 0.4,
      duration: Duration(milliseconds: 350),
      child: Transform.rotate(
        angle: math.pi * value, // Apply the calculated rotation
        child: MovieCard(movie: movies[index]),
      ),
    );
  },
);
