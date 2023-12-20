class Dog {
  String name;
  String age;
  String imageUrl;
  String description;

//<editor-fold desc="Data Methods">
  Dog({
    required this.name,
    required this.age,
    required this.imageUrl,
    required this.description,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Dog &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age &&
          imageUrl == other.imageUrl &&
          description == other.description);

  @override
  int get hashCode =>
      name.hashCode ^ age.hashCode ^ imageUrl.hashCode ^ description.hashCode;

  @override
  String toString() {
    return 'dog{ '
        'name: $name,'
        'age: $age,'
        'imageUrl: $imageUrl,'
        'description: $description,''}';
  }

  Dog copyWith({
    String? name,
    String? age,
    String? imageUrl,
    String? description,
  }) {
    return Dog(
      name: name ?? this.name,
      age: age ?? this.age,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'age': this.age,
      'imageUrl': this.imageUrl,
      'description': this.description,
    };
  }

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      name: map['name'] as String,
      age: map['age'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }

//</editor-fold>
}
