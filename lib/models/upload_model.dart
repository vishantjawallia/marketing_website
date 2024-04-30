class UploadModel {
  final String? originalname;
  final String? filename;
  final String? location;
  const UploadModel({this.originalname, this.filename, this.location});
  UploadModel copyWith({String? originalname, String? filename, String? location}) {
    return UploadModel(originalname: originalname ?? this.originalname, filename: filename ?? this.filename, location: location ?? this.location);
  }

  Map<String, Object?> toJson() {
    return {'originalname': originalname, 'filename': filename, 'location': location};
  }

  static UploadModel fromJson(Map<String, Object?> json) {
    return UploadModel(
        originalname: json['originalname'] == null ? null : json['originalname'] as String,
        filename: json['filename'] == null ? null : json['filename'] as String,
        location: json['location'] == null ? null : json['location'] as String);
  }

  @override
  String toString() {
    return '''UploadModel(
                originalname:$originalname,
filename:$filename,
location:$location
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UploadModel && other.runtimeType == runtimeType && other.originalname == originalname && other.filename == filename && other.location == location;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, originalname, filename, location);
  }
}
