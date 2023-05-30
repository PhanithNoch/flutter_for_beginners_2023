import 'package:flutter/material.dart';

import 'movie_details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var lstImages = [
    'https://lumiere-a.akamaihd.net/v1/images/p_disneymovies_avatarthewayofwater_1710_b7d39b03.jpeg?region=0%2C0%2C540%2C810',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjQsJRH73QaONwT-8buVcyBQ7p2jMsAMA4JQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBDPL57d1kAjyI6oPcN68aPKOl4UWP5LDpaw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKc9gq-ens9B09zldqZuX3k52hLXXSQr2OQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbXxqx4paEQgLYx4huFUHueLkim02YOjNkQQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIKc9gq-ens9B09zldqZuX3k52hLXXSQr2OQ&usqp=CAU',
  ];

  /// Inkwell, Gesture Detector,
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'The Movie App'.toUpperCase(),
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  MediaQuery.of(context).orientation == Orientation.portrait
                      ? 2
                      : 4,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.7,
            ),
            itemCount: lstImages.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  print('tap on $index');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MovieDetailsScreen(),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    lstImages[index],
                    fit: BoxFit.cover,
                    width: 200,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
