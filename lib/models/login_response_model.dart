class LoginResponseModel {
  String? id;
  List<dynamic>? jobId;
  List<dynamic>? skillId;
  String? email;
  String? otp;
  bool? accountVerification;
  bool? isTermsAccepted;
  String? role;
  String? userType;
  int? wallet;
  List<dynamic>? expertise;
  List<dynamic>? roleIds;
  List<dynamic>? contactPreference;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? firstName;
  String? language;
  String? lastName;
  String? phone;

  LoginResponseModel({
    this.id,
    this.jobId,
    this.skillId,
    this.email,
    this.otp,
    this.accountVerification,
    this.isTermsAccepted,
    this.role,
    this.userType,
    this.wallet,
    this.expertise,
    this.roleIds,
    this.contactPreference,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.firstName,
    this.language,
    this.lastName,
    this.phone,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        id: json["_id"],
        jobId: json["jobId"] == null ? [] : List<dynamic>.from(json["jobId"]!.map((x) => x)),
        skillId: json["skillId"] == null ? [] : List<dynamic>.from(json["skillId"]!.map((x) => x)),
        email: json["email"],
        otp: json["otp"],
        accountVerification: json["accountVerification"],
        isTermsAccepted: json["isTermsAccepted"],
        role: json["role"],
        userType: json["userType"],
        wallet: json["wallet"],
        expertise: json["expertise"] == null ? [] : List<dynamic>.from(json["expertise"]!.map((x) => x)),
        roleIds: json["roleIds"] == null ? [] : List<dynamic>.from(json["roleIds"]!.map((x) => x)),
        contactPreference: json["contactPreference"] == null ? [] : List<dynamic>.from(json["contactPreference"]!.map((x) => x)),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        firstName: json["firstName"],
        language: json["language"],
        lastName: json["lastName"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "jobId": jobId == null ? [] : List<dynamic>.from(jobId!.map((x) => x)),
        "skillId": skillId == null ? [] : List<dynamic>.from(skillId!.map((x) => x)),
        "email": email,
        "otp": otp,
        "accountVerification": accountVerification,
        "isTermsAccepted": isTermsAccepted,
        "role": role,
        "userType": userType,
        "wallet": wallet,
        "expertise": expertise == null ? [] : List<dynamic>.from(expertise!.map((x) => x)),
        "roleIds": roleIds == null ? [] : List<dynamic>.from(roleIds!.map((x) => x)),
        "contactPreference": contactPreference == null ? [] : List<dynamic>.from(contactPreference!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "firstName": firstName,
        "language": language,
        "lastName": lastName,
        "phone": phone,
      };
}
