class Model_PetNeeds
{
  String? imageUrl;
  String? title;

  Model_PetNeeds({
    required this.imageUrl,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': this.imageUrl,
      'title': this.title,
    };
  }

  factory Model_PetNeeds.fromMap(Map<String, dynamic> map) {
    return Model_PetNeeds(
      imageUrl: map['imageUrl'] as String,
      title: map['title'] as String,
    );
  }
}