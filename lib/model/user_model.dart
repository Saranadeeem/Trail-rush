import 'package:json_annotation/json_annotation.dart';
import '../utils/library.dart';

part 'user_model.g.dart';
@JsonSerializable()
class UserModel {
  final String? createdTime;
  final String? email;
  final String? uid;

  UserModel({
    this.createdTime,
    this.email,
    this.uid,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  static CollectionReference<UserModel> collection() {
    return FirebaseFirestore.instance.collection('users').withConverter<UserModel>(
        fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }

  static DocumentReference<UserModel> doc({required String userId}) {
    return FirebaseFirestore.instance.doc('users/$userId').withConverter<UserModel>(
        fromFirestore: (snapshot, _) => UserModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }
}