class Post {
  String profileName = "Toxon";
  String profilePicture = "assets/dog_1.png";
  List<String> images = [
    "assets/dog_picture_1.png",
    "assets/dog_picture_2.png",
    "assets/dog_picture_3.png",
  ];
  String description = "Hello ! Moi c’est Toxon, je suis un labrador de 6 mois et j’attends avec impatience ma nouvelle famille ! Je suis joueur et j’adore les enfants ! ";
  int numberLikes = 25456;
  DateTime postedAt = DateTime.now().subtract(const Duration(hours: 2));
}
