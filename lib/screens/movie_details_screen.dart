import 'package:flutter/material.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 250,
                child: Image.network(
                  'https://variety.com/wp-content/uploads/2023/03/Dead-by-Daylight.jpg?w=681&h=383&crop=1',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Positioned(
                  bottom: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQcl8DgnKYxNGQaZ6O47xHzrX8t0JN39x5BdLcDoUCTQ0wra9Lj7uC8wJTJpc1Zx06-BY&usqp=CAU',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.7,
                          // height: 140,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '7.3',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('41.23 Reviews',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.timer,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '124 min',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.date_range,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "24/03/2023",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),

                                /// add watchlist favorite and share
                                SizedBox(
                                  height: 10,
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            // color: Colors.grey,
                                          ),
                                          Text(
                                            'Watchlist',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            // color: Colors.grey,
                                          ),
                                          Text(
                                            'Favorite',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Icon(
                                            Icons.share,
                                            // color: Colors.grey,
                                          ),
                                          Text(
                                            'Share',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),

        /// add overview
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Overview', style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Captain Marvel is an extraterrestrial Kree warrior who finds herself caught in the middle of an intergalactic battle between her people and the Skulls.")
            ],
          ),
        ),
      ],
    ));
  }
}
