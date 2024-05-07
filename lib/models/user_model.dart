class UserModel {
  final int id;
  final String name;
  final String email;
  final String username;
  final String photoProfileUrl;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.photoProfileUrl,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['user']['id'] ?? 0,
        name: json['user']['name'],
        email: json['user']['email'],
        username: json['user']['username'],
        photoProfileUrl: json['user']['profile_photo_url'] ?? '',
        token: json['access_token'] ?? '',
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': photoProfileUrl,
      'access_token': token,
    };
  }
}
