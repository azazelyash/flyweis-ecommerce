class BannerDataModel {
  String? id;
  String? bannerTitle;
  String? bannerDescription;
  String? bannerVideo;
  String? type;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? bannerImage;

  BannerDataModel({
    this.id,
    this.bannerTitle,
    this.bannerDescription,
    this.bannerVideo,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.bannerImage,
  });

  factory BannerDataModel.fromJson(Map<String, dynamic> json) => BannerDataModel(
        id: json["_id"],
        bannerTitle: json["bannerTitle"],
        bannerDescription: json["bannerDescription"],
        bannerVideo: json["bannerVideo"],
        type: json["type"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        bannerImage: json["bannerImage"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "bannerTitle": bannerTitle,
        "bannerDescription": bannerDescription,
        "bannerVideo": bannerVideo,
        "type": type,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "bannerImage": bannerImage,
      };
}
