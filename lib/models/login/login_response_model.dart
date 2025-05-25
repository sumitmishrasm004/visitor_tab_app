class LoginResponseModel {
  int? status;
  Result? result;

  LoginResponseModel({this.status, this.result});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  Visitor? visitor;

  Result({this.visitor});

  Result.fromJson(Map<String, dynamic> json) {
    visitor =
        json['visitor'] != null ? new Visitor.fromJson(json['visitor']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.visitor != null) {
      data['visitor'] = this.visitor!.toJson();
    }
    return data;
  }
}

class Visitor {
  String? name;
  String? email;
  String? contactNumber;
  String? purpose;
  String? personToMeet;
  String? organization;
  String? department;
  String? signature;
  String? profilePicture;
  String? sId;
  String? visitedAt;
  String? updatedAt;
  int? id;
  int? iV;
  int? operation;

  Visitor(
      {this.name,
      this.email,
      this.contactNumber,
      this.purpose,
      this.personToMeet,
      this.organization,
      this.department,
      this.signature,
      this.profilePicture,
      this.sId,
      this.visitedAt,
      this.updatedAt,
      this.id,
      this.iV,
      this.operation});

  Visitor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    purpose = json['purpose'];
    personToMeet = json['personToMeet'];
    organization = json['organization'];
    department = json['department'];
    signature = json['signature'];
    profilePicture = json['profilePicture'];
    sId = json['_id'];
    visitedAt = json['visited_at'];
    updatedAt = json['updated_at'];
    id = json['id'];
    iV = json['__v'];
    operation = json['operation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['contactNumber'] = this.contactNumber;
    data['purpose'] = this.purpose;
    data['personToMeet'] = this.personToMeet;
    data['organization'] = this.organization;
    data['department'] = this.department;
    data['signature'] = this.signature;
    data['profilePicture'] = this.profilePicture;
    data['_id'] = this.sId;
    data['visited_at'] = this.visitedAt;
    data['updated_at'] = this.updatedAt;
    data['id'] = this.id;
    data['__v'] = this.iV;
    data['operation'] = this.operation;
    return data;
  }
}