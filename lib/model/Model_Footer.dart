class Model_Footer
{
  String? email;
  String? location;
  String? phone;
  String? location2;


  Model_Footer({
    this.email,
    this.location,
    this.phone,
    this.location2,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': this.email,
      'location': this.location,
      'phone': this.phone,
      'location2': this.location2,
    };
  }

  factory Model_Footer.fromMap(Map<String, dynamic> map) {
    return Model_Footer(
      email: map['email'] as String,
      location: map['location'] as String,
      phone: map['phone'] as String,
      location2: map['location2'] as String,
    );
  }


}