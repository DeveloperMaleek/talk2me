class User {
  int id;
  bool isAnonymous;
  String firstName;
  String lastName;
  String anonymousDisplayName;
  String profileImage;
  String coverImage;
  String anonymousProfileImage;
  String bio;
  String email;
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
      this.email);
}
