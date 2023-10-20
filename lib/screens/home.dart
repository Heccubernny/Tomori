import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0),
                  ]),
            ),
          ),

          //first container
          const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(10),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ButtonBar(children: [
                        Text("Music"),
                        Text("Podcasts & Shows"),
                      ]),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          // style: Theme.of(context).textTheme.headlineMedium,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_none_sharp,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.history,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.settings,
                              size: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        AlbumCard(
                          label: "Gospel",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Hip Hop",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Bass",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Afrobeat",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Amapiano",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Classic",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                          label: "Club house",
                          image: AssetImage(
                            "assets/focus_image.jpeg",
                          ),
                        ),
                        SizedBox(width: 20),
                        AlbumCard(
                            label: "Electro",
                            image: AssetImage(
                              "assets/focus_image.jpeg",
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlbumCard extends StatelessWidget {
  final String label;
  final ImageProvider<Object> image;
  // final String image;

  const AlbumCard({
    super.key,
    required this.label,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          fit: BoxFit.cover,
          width: 120,
          height: 120,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.amber),
        )
      ],
    );
  }
}
