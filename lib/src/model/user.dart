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
      this.id,
      this.firstName,
      this.lastName,
      this.profileImage,
      this.isAnonymous,
      this.anonymousDisplayName,
      this.anonymousProfileImage,
      this.coverImage,
      this.bio,
      this.email,
      this.expertise,
      this.feelingState,
      this.goals,
      this.isTherapist,
      this.language,
      this.socialUrls);

      
}
