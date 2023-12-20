class Star {
  String title;
  String sbuTitle;
  String imageUrl;
  String description;

//<editor-fold desc="Data Methods">

  Star({
    required this.title,
    required this.sbuTitle,
    required this.imageUrl,
    required this.description,
  });

//<ed@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Star &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          sbuTitle == other.sbuTitle &&
          imageUrl == other.imageUrl &&
          description == other.description);

  @override
  int get hashCode =>
      title.hashCode ^
      sbuTitle.hashCode ^
      imageUrl.hashCode ^
      description.hashCode;

  @override
  String toString() {
    return 'Star{ title: $title, sbuTitle: $sbuTitle, imageUrl: $imageUrl, description: $description,}';
  }

  Star copyWith({
    String? title,
    String? sbuTitle,
    String? imageUrl,
    String? description,
  }) {
    return Star(
      title: title ?? this.title,
      sbuTitle: sbuTitle ?? this.sbuTitle,
      imageUrl: imageUrl ?? this.imageUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'sbuTitle': this.sbuTitle,
      'imageUrl': this.imageUrl,
      'description': this.description,
    };
  }

  factory Star.fromMap(Map<String, dynamic> map) {
    return Star(
      title: map['title'] as String,
      sbuTitle: map['sbuTitle'] as String,
      imageUrl: map['imageUrl'] as String,
      description: map['description'] as String,
    );
  }

//</editor-fold>
}
