class Model_HowFeedCat
{
  String? title;
  String? body;

  Model_HowFeedCat({
    this.title,
    this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'body': this.body,
    };
  }

  factory Model_HowFeedCat.fromMap(Map<String, dynamic> map) {
    return Model_HowFeedCat(
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
}