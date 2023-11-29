class Quote {
  String text;
  String author;

  Quote(this.text, this.author);
  display() {
    return "$author: $text";
  }
}
