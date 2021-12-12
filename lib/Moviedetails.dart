class Moviedetails {
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String poster;
  String director;
  List<String> images;
  String plot;
  String genre;

  //paramerized constructor
  Moviedetails(String a, String b, String c, String d, String e, String f,
      String g, List<String> h, String i, String j) {
    this.title = a;
    this.year = b;
    this.rated = c;
    this.released = d;
    this.runtime = e;
    this.poster = f;
    this.director = g;
    this.images = h;
    this.plot = i;
    this.genre = j;
  }
}
