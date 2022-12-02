import 'package:wouflove/src/models/post.dart';

Post tuxonPost = Post(
  profileName: "Tuxon",
  profilePicture: "assets/dog_1.png",
  images: [
    "assets/dog_picture_1.png",
    "assets/dog_picture_2.png",
    "assets/dog_picture_3.png",
  ],
  description: "Hello ! Moi c’est Toxon, je suis un labrador de 6 mois et j’attends avec impatience ma nouvelle famille ! Je suis joueur et j’adore les enfants ! ",
  numberLikes: 25456,
  postedAt: DateTime.now().subtract(const Duration(hours: 2)), // POSTED 2HOURS AGO
);
