class Post {
  String profileName;
  String profilePicture;
  List<String> images;
  String description;
  int numberLikes;
  DateTime postedAt;

  Post({
    required this.profileName,
    required this.profilePicture,
    required this.images,
    required this.description,
    required this.numberLikes,
    required this.postedAt,
  });
}
