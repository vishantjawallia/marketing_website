class LoginModel {
  final String? accessToken;
  final String? refreshToken;
  const LoginModel({this.accessToken, this.refreshToken});
  LoginModel copyWith({String? accessToken, String? refreshToken}) {
    return LoginModel(accessToken: accessToken ?? this.accessToken, refreshToken: refreshToken ?? this.refreshToken);
  }

  Map<String, Object?> toJson() {
    return {'access_token': accessToken, 'refresh_token': refreshToken};
  }

  static LoginModel fromJson(Map<String, Object?> json) {
    return LoginModel(accessToken: json['access_token'] == null ? null : json['access_token'] as String, refreshToken: json['refresh_token'] == null ? null : json['refresh_token'] as String);
  }

  @override
  String toString() {
    return '''LoginModel(
                accessToken:$accessToken,
refreshToken:$refreshToken
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is LoginModel && other.runtimeType == runtimeType && other.accessToken == accessToken && other.refreshToken == refreshToken;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, accessToken, refreshToken);
  }
}
