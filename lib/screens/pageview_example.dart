import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewExample extends StatefulWidget {
  PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  var lstMovies = [
    'https://variety.com/wp-content/uploads/2023/03/Dead-by-Daylight.jpg?w=1000',
    'https://assets-prd.ignimgs.com/2022/08/02/time-travel-movies-slideshow-1659475227004.jpg',
    'https://variety.com/wp-content/uploads/2023/03/Dead-by-Daylight.jpg?w=1000',
  ];
  Animation<double>? _nextPage;
  int _currentPage = 0;
  final _pageViewController = PageController(
    initialPage: 1,
    viewportFraction: 0.8,
  );

  @override
  void initState() {
    /// set auto scroll pageview with duration
    Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_currentPage < lstMovies.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageViewController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('PageView Example'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView.builder(
                controller: _pageViewController,
                itemCount: lstMovies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.network(
                      lstMovies[index],
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: _pageViewController, // PageController
              count: lstMovies.length,
              effect: WormEffect(), // your preferred effect
              onDotClicked: (index) {},
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: lstMovies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(lstMovies[index])),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
