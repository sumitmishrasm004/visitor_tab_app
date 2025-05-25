class LoginRequestModel {
  String? name;
  String? email;
  String? contactNumber;
  String? personToMeet;
  String? purpose;
  String? organization;
  String? department;
  int? id;

  LoginRequestModel(
      {this.name,
      this.email,
      this.contactNumber,
      this.personToMeet,
      this.purpose,
      this.organization,
      this.department,
      this.id});

  LoginRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    personToMeet = json['personToMeet'];
    purpose = json['purpose'];
    organization = json['organization'];
    department = json['department'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['contactNumber'] = this.contactNumber;
    data['personToMeet'] = this.personToMeet;
    data['purpose'] = this.purpose;
    data['organization'] = this.organization;
    data['department'] = this.department;
    data['id'] = this.id;
    return data;
  }
}