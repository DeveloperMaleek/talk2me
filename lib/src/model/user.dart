class User {
  int id;
  String email;
  String firstName;
  String lastName;
  bool isTherapist;
  bool isAnonymous;
  String profileImage;
  int anonymousProfileImage;
  String anonymousDisplayName;
  int coverImage;
  String bio;
  List goals;
  List socialUrls;
  List expertise;
  List language;
  int feelingState;
  // Timestamp creationDate;

  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.profileImage,
      required this.isAnonymous,
      required this.anonymousDisplayName,
      required this.anonymousProfileImage,
      required this.coverImage,
      required this.bio,
      required this.email,
      required this.expertise,
      required this.feelingState,
      required this.goals,
      required this.isTherapist,
      required this.language,
      required this.socialUrls});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      profileImage: json['profileImage'],
      isAnonymous: json['isAnonymous'],
      anonymousDisplayName: json['anonymousDisplayName'],
      anonymousProfileImage: json['anonymousProfileImage'],
      coverImage: json['coverImage'],
      bio: json['bio'],
      expertise: json['expertise'],
      feelingState: json['feelingState'],
      goals: json['goals'],
      isTherapist: json['isTherapist'],
      language: json['language'],
      socialUrls: json['socialUrls'],
    );
  }
}
