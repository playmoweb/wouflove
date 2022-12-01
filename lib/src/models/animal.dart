enum Animal {
  ME, LILOU, BOULY, MIOU, NELSOR
}

extension ExtensionAnimal on Animal {
  String get name {
    switch(this) {
      case Animal.ME: return "Votre story";
      case Animal.LILOU: return "Lilou";
      case Animal.BOULY: return "Bouly";
      case Animal.MIOU: return "Miou";
      case Animal.NELSOR: return "Nelsor";
    }
  }

  String get image {
    switch(this) {
      case Animal.ME: return "assets/dog_3.png";
      case Animal.LILOU: return "assets/cat_1.png";
      case Animal.BOULY: return "assets/dog_2.png";
      case Animal.MIOU: return "assets/cat_2.png";
      case Animal.NELSOR: return "assets/dog_4.png";
    }
  }
}