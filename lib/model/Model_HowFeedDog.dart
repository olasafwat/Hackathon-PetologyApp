class Model_HowFeedDog
{
  String? title;
  String? body;

  Model_HowFeedDog({
    this.title,
    this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'body': this.body,
    };
  }

  factory Model_HowFeedDog.fromMap(Map<String, dynamic> map) {
    return Model_HowFeedDog(
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
}