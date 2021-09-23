class BodyPartsModel {
  final String title;
  final String image;

  const BodyPartsModel({required this.title, required this.image});

  factory BodyPartsModel.fromJson(Map<String, dynamic> map) {
    return BodyPartsModel(
      title: map["title"] as String,
      image: map["img"] as String,
    );
  }

  toMap() => {"title": title, "img": image};
}
