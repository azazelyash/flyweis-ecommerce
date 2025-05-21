class NotificationModel {
  String? id;
  UserId? userId;
  String? title;
  DateTime? createdAt;
  DateTime? updatedAt;

  NotificationModel({
    this.id,
    this.userId,
    this.title,
    this.createdAt,
    this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        id: json["_id"],
        userId: json["userId"] == null ? null : UserId.fromJson(json["userId"]),
        title: json["title"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "userId": userId?.toJson(),
        "title": title,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class UserId {
  String? email;
  String? role;
  String? userType;
  String? firstName;
  String? facePhoto;
  String? lastName;

  UserId({
    this.email,
    this.role,
    this.userType,
    this.firstName,
    this.lastName,
    this.facePhoto,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        email: json["email"],
        role: json["role"],
        facePhoto: json["facePhoto"],
        userType: json["userType"],
        firstName: json["firstName"],
        lastName: json["lastName"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "role": role,
        "facePhoto": facePhoto,
        "userType": userType,
        "firstName": firstName,
        "lastName": lastName,
      };
}
