class Model_PetNeedHouse
{

  int? id;
  String? name;
  String? image;
  String? size;
  String? breed;
  bool? gender;
  String? hairLength;
  String? color;
  String? careBehavior;
  bool? houseTrained;
  String? description;
  String? location;
  String? phone;
  bool? vaccinated;
  int? categoryId;
  int? userId;

  Model_PetNeedHouse({
    required this.id,
    required this.name,
    required this.image,
    required this.size,
    required this.breed,
    required this.gender,
    required this.hairLength,
    required this.color,
    required this.careBehavior,
    required this.houseTrained,
    required this.description,
    required this.location,
    required this.phone,
    required this.vaccinated,
    required this.categoryId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'image': this.image,
      'size': this.size,
      'breed': this.breed,
      'gender': this.gender,
      'hairLength': this.hairLength,
      'color': this.color,
      'careBehavior': this.careBehavior,
      'houseTrained': this.houseTrained,
      'description': this.description,
      'location': this.location,
      'phone': this.phone,
      'vaccinated': this.vaccinated,
      'categoryId': this.categoryId,
      'userId': this.userId,
    };
  }

  factory Model_PetNeedHouse.fromMap(Map<String, dynamic> map) {
    return Model_PetNeedHouse(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      size: map['size'] as String,
      breed: map['breed'] as String,
      gender: map['gender'] as bool,
      hairLength: map['hairLength'] as String,
      color: map['color'] as String,
      careBehavior: map['careBehavior'] as String,
      houseTrained: map['houseTrained'] as bool,
      description: map['description'] as String,
      location: map['location'] as String,
      phone: map['phone'] as String,
      vaccinated: map['vaccinated'] as bool,
      categoryId: map['categoryId'] as int,
      userId: map['userId'] as int,
    );
  }
}