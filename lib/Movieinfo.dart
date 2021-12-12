import 'package:flutter/material.dart';

class Movieinfo extends StatelessWidget {
  final moviename;
  final year;
  final rating;
  final release;
  final time;
  final poster;
  final director;
  final List<String> images;
  final plot;
  final genre;

  const Movieinfo({
    Key key,
    this.moviename,
    this.year,
    this.rating,
    this.release,
    this.time,
    this.poster,
    this.director,
    this.images,
    this.plot,
    this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text(
          "Movie App UI",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber[200],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              child: Image(
                image: NetworkImage(this.poster),
              ),
            ),
            Icon(
              Icons.pause_circle_filled,
              size: 70,
              color: Colors.white,
            )
          ]),
          Divider(
            thickness: 10,
          ),
          Text(
            this.moviename,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: this.genre, style: TextStyle(color: Colors.grey)),
            TextSpan(text: "       "),
            TextSpan(
              text: this.rating,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ])),
          Divider(
            thickness: 10,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Little about the Movie",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
          Card(
            elevation: 4,
            shadowColor: Colors.blueGrey,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ClipRRect(
                child: Image(
                  height: 70,
                  image: NetworkImage(this.images[0]),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Director:-  ${this.director}",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                  Text("Release Date:-  ${this.release}",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown)),
                  Text(
                    "Rating:- ${this.rating}",
                    style: TextStyle(
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                  Text("Duration:- ${this.time}",
                      style: TextStyle(
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown))
                ],
              )
            ]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "The plot",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
          ),
          Card(
            elevation: 4,
            shadowColor: Colors.blueGrey,
            child: Text(
              this.plot,
              style: TextStyle(letterSpacing: 1),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4.0,
                    child: Image(
                      image: NetworkImage(images[index]),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 8,
                  );
                },
                itemCount: images.length),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        mini: true,
        backgroundColor: Colors.amber,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
