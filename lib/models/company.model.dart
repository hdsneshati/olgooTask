class CompanyModel {
  final int id;
  final String title;
  final String? phoneNumber;
  final DateTime registerDate;
  final DateTime updatedAt;
  final String status;

  CompanyModel({
    required this.id,
    required this.title,
    this.phoneNumber,
    required this.registerDate,
    required this.updatedAt,
    required this.status,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      id: json['id'],
      title: json['title'],
      phoneNumber: json['phoneNumber'],
      registerDate: DateTime.parse(json['registerDate']),
      updatedAt: DateTime.parse(json['updatedAt']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'phoneNumber': phoneNumber,
      'registerDate': registerDate.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'status': status,
    };
  }
}