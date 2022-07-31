class Model_HomeScreen_SS
{
  String? title;
  String? body;

  Model_HomeScreen_SS({
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'body': this.body,
    };
  }

  factory Model_HomeScreen_SS.fromMap(Map<String, dynamic> map) {
    return Model_HomeScreen_SS(
      title: map['title'] as String,
      body: map['body'] as String,
    );
  }
}