class JobDataModel {
  String? id;
  String? user;
  List<dynamic>? staff;
  List<String>? staffAccepted;
  List<dynamic>? staffSeen;
  List<Department>? departments;
  List<Role>? roles;
  List<dynamic>? staffBookingIds;
  String? orderId;
  DateTime? date;
  DateTime? toTime;
  DateTime? fromTime;
  int? price;
  int? subTotal;
  int? total;
  int? vat;
  bool? superMission;
  String? jobStatus;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  AllBookingId? allBookingId;

  JobDataModel({
    this.id,
    this.user,
    this.staff,
    this.staffAccepted,
    this.staffSeen,
    this.departments,
    this.roles,
    this.staffBookingIds,
    this.orderId,
    this.date,
    this.toTime,
    this.fromTime,
    this.price,
    this.subTotal,
    this.total,
    this.vat,
    this.superMission,
    this.jobStatus,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.allBookingId,
  });

  factory JobDataModel.fromJson(Map<String, dynamic> json) => JobDataModel(
        id: json["_id"],
        user: json["user"],
        staff: json["staff"] == null ? [] : List<dynamic>.from(json["staff"]!.map((x) => x)),
        staffAccepted: json["staffAccepted"] == null ? [] : List<String>.from(json["staffAccepted"]!.map((x) => x)),
        staffSeen: json["staffSeen"] == null ? [] : List<dynamic>.from(json["staffSeen"]!.map((x) => x)),
        departments: json["departments"] == null ? [] : List<Department>.from(json["departments"]!.map((x) => Department.fromJson(x))),
        roles: json["roles"] == null ? [] : List<Role>.from(json["roles"]!.map((x) => Role.fromJson(x))),
        staffBookingIds: json["staffBookingIds"] == null ? [] : List<dynamic>.from(json["staffBookingIds"]!.map((x) => x)),
        orderId: json["orderId"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        toTime: json["toTime"] == null ? null : DateTime.parse(json["toTime"]),
        fromTime: json["fromTime"] == null ? null : DateTime.parse(json["fromTime"]),
        price: json["price"],
        subTotal: json["subTotal"],
        total: json["total"],
        vat: json["vat"],
        superMission: json["superMission"],
        jobStatus: json["jobStatus"],
        status: json["status"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        allBookingId: json["allBookingId"] == null ? null : AllBookingId.fromJson(json["allBookingId"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user": user,
        "staff": staff == null ? [] : List<dynamic>.from(staff!.map((x) => x)),
        "staffAccepted": staffAccepted == null ? [] : List<dynamic>.from(staffAccepted!.map((x) => x)),
        "staffSeen": staffSeen == null ? [] : List<dynamic>.from(staffSeen!.map((x) => x)),
        "departments": departments == null ? [] : List<dynamic>.from(departments!.map((x) => x.toJson())),
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x.toJson())),
        "staffBookingIds": staffBookingIds == null ? [] : List<dynamic>.from(staffBookingIds!.map((x) => x)),
        "orderId": orderId,
        "date": date?.toIso8601String(),
        "toTime": toTime?.toIso8601String(),
        "fromTime": fromTime?.toIso8601String(),
        "price": price,
        "subTotal": subTotal,
        "total": total,
        "vat": vat,
        "superMission": superMission,
        "jobStatus": jobStatus,
        "status": status,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "allBookingId": allBookingId?.toJson(),
      };
}

class AllBookingId {
  Location? location;
  String? id;
  String? user;
  dynamic coupon;
  bool? couponUsed;
  List<String>? bookingIds;
  String? orderId;
  int? vat;
  int? couponDiscount;
  int? subTotal;
  int? total;
  List<dynamic>? outfits;
  List<String>? equipment;
  bool? staffMealProvided;
  bool? bringYourId;
  List<String>? mobility;
  int? pinCode;
  String? name;
  String? address;
  String? country;
  String? state;
  String? city;
  String? invoiceName;
  String? invoiceAddress;
  String? invoiceCity;
  String? invoiceCountry;
  String? companyRegistrationNumber;
  String? invoiceDetails;
  String? status;
  List<dynamic>? taskList;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  AllBookingId({
    this.location,
    this.id,
    this.user,
    this.coupon,
    this.couponUsed,
    this.bookingIds,
    this.orderId,
    this.vat,
    this.couponDiscount,
    this.subTotal,
    this.total,
    this.outfits,
    this.equipment,
    this.staffMealProvided,
    this.bringYourId,
    this.mobility,
    this.pinCode,
    this.name,
    this.address,
    this.country,
    this.state,
    this.city,
    this.invoiceName,
    this.invoiceAddress,
    this.invoiceCity,
    this.invoiceCountry,
    this.companyRegistrationNumber,
    this.invoiceDetails,
    this.status,
    this.taskList,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory AllBookingId.fromJson(Map<String, dynamic> json) => AllBookingId(
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        id: json["_id"],
        user: json["user"],
        coupon: json["coupon"],
        couponUsed: json["couponUsed"],
        bookingIds: json["bookingIds"] == null ? [] : List<String>.from(json["bookingIds"]!.map((x) => x)),
        orderId: json["orderId"],
        vat: json["vat"],
        couponDiscount: json["couponDiscount"],
        subTotal: json["subTotal"],
        total: json["total"],
        outfits: json["outfits"] == null ? [] : List<dynamic>.from(json["outfits"]!.map((x) => x)),
        equipment: json["equipment"] == null ? [] : List<String>.from(json["equipment"]!.map((x) => x)),
        staffMealProvided: json["staffMealProvided"],
        bringYourId: json["bringYourId"],
        mobility: json["mobility"] == null ? [] : List<String>.from(json["mobility"]!.map((x) => x)),
        pinCode: json["pinCode"],
        name: json["name"],
        address: json["address"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        invoiceName: json["invoiceName"],
        invoiceAddress: json["invoiceAddress"],
        invoiceCity: json["invoiceCity"],
        invoiceCountry: json["invoiceCountry"],
        companyRegistrationNumber: json["companyRegistrationNumber"],
        invoiceDetails: json["invoiceDetails"],
        status: json["status"],
        taskList: json["taskList"] == null ? [] : List<dynamic>.from(json["taskList"]!.map((x) => x)),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "location": location?.toJson(),
        "_id": id,
        "user": user,
        "coupon": coupon,
        "couponUsed": couponUsed,
        "bookingIds": bookingIds == null ? [] : List<dynamic>.from(bookingIds!.map((x) => x)),
        "orderId": orderId,
        "vat": vat,
        "couponDiscount": couponDiscount,
        "subTotal": subTotal,
        "total": total,
        "outfits": outfits == null ? [] : List<dynamic>.from(outfits!.map((x) => x)),
        "equipment": equipment == null ? [] : List<dynamic>.from(equipment!.map((x) => x)),
        "staffMealProvided": staffMealProvided,
        "bringYourId": bringYourId,
        "mobility": mobility == null ? [] : List<dynamic>.from(mobility!.map((x) => x)),
        "pinCode": pinCode,
        "name": name,
        "address": address,
        "country": country,
        "state": state,
        "city": city,
        "invoiceName": invoiceName,
        "invoiceAddress": invoiceAddress,
        "invoiceCity": invoiceCity,
        "invoiceCountry": invoiceCountry,
        "companyRegistrationNumber": companyRegistrationNumber,
        "invoiceDetails": invoiceDetails,
        "status": status,
        "taskList": taskList == null ? [] : List<dynamic>.from(taskList!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class Location {
  String? type;
  List<int>? coordinates;

  Location({
    this.type,
    this.coordinates,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        type: json["type"],
        coordinates: json["coordinates"] == null ? [] : List<int>.from(json["coordinates"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "coordinates": coordinates == null ? [] : List<dynamic>.from(coordinates!.map((x) => x)),
      };
}

class Department {
  Id? departmentId;
  int? quantity;

  Department({
    this.departmentId,
    this.quantity,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        departmentId: json["departmentId"] == null ? null : Id.fromJson(json["departmentId"]),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "departmentId": departmentId?.toJson(),
        "quantity": quantity,
      };
}

class Id {
  String? id;
  String? name;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  Id({
    this.id,
    this.name,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class Role {
  Id? roleId;
  int? quantity;

  Role({
    this.roleId,
    this.quantity,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        roleId: json["roleId"] == null ? null : Id.fromJson(json["roleId"]),
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "roleId": roleId?.toJson(),
        "quantity": quantity,
      };
}
