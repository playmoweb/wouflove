enum Animal {
  ME,
  LILOU,
  BOULY,
  // Il manque quelque chose ici
  NELSOR,
}

extension ExtensionAnimal on Animal {
  String get name {
    switch (this) {
      case Animal.ME:
        return "Votre story";
      case Animal.LILOU:
        return "Lilou";
      case Animal.BOULY:
        return "Bouly";
      // Il manque quelque chose ici
      case Animal.NELSOR:
        return "Nelsor";
    }
  }

  String get image {
    switch (this) {
      case Animal.ME:
        return "assets/dog_3.png";
      case Animal.LILOU:
        return "assets/cat_1.png";
      case Animal.BOULY:
        return "assets/dog_2.png";
      // Il manque quelque chose ici
      case Animal.NELSOR:
        return "assets/dog_4.png";
    }
  }
}
