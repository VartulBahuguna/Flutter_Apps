class Quotes{

  String text;
  String author;

  @override
  String toString() {
    return "\"" + this.text + "\"\n          By:- " + this.author;
  }

  Quotes({this.text, this.author});

}