// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      createdTime: json['createdTime'] as String?,
      email: json['email'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) =>
    <String, dynamic>{
      'createdTime': instance.createdTime,
      'email': instance.email,
      'uid': instance.uid,
    };
