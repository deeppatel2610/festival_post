import 'dart:ui';

class Model {
  late String img, name;
  late Color color;

  Model({
    required this.img,
    required this.name,
    required this.color,
  });

  factory Model.fromMap(m1) {
    return Model(
      img: m1['img'],
      name: m1['name'],
      color: m1['color'],
    );
  }
}
