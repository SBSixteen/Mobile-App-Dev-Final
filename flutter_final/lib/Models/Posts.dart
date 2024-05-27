class Posts {
  String title;
  String description;

  Posts(this.title, this.description);

  factory Posts.fromJson(Map<dynamic, dynamic> json) {
    return Posts(
      json["title"],
      json["description"],
    );
  }

  Map<String, dynamic> toJson() => {
        'Title': title,
        'Description': description,
  };
}
