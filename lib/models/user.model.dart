

import 'package:flutter_application_ui_olgoo/models/company.model.dart';

class UserModel {
  final int id;
  final String name;
  final String phoneNumber;
  final DateTime registerDate;
  final DateTime updatedAt;
  final String status;
  final String role;
  final CompanyModel company;
  final TokenModel tokens;

  UserModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.registerDate,
    required this.updatedAt,
    required this.status,
    required this.role,
    required this.company,
    required this.tokens,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      registerDate: DateTime.parse(json['registerDate']),
      updatedAt: DateTime.parse(json['updatedAt']),
      status: json['status'],
      role: json['role'][0],
      company: CompanyModel.fromJson(json['company']),
      tokens: TokenModel.fromJson(json['tokens']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phoneNumber': phoneNumber,
      'registerDate': registerDate.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'status': status,
      'role': role,
      'company': company.toJson(),
      'tokens': tokens.toJson(),
    };
  }
}



class TokenModel {
  final String accessToken;
  final String refreshToken;

  TokenModel({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }
}
