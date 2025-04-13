import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'list_of_tracks_model.g.dart';
@JsonSerializable()
class ListOfTracksModel {
  final String? location;
  final List<String>? nameoftrack;

  ListOfTracksModel({this.location, this.nameoftrack});

  factory ListOfTracksModel.fromJson(Map<String, dynamic> json) => _$ListOfTracksModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListOfTracksModelToJson(this);

  static CollectionReference<ListOfTracksModel> collection() {
    return FirebaseFirestore.instance.collection('list_of_tracks').withConverter<ListOfTracksModel>(
        fromFirestore: (snapshot, _) => ListOfTracksModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }

  static DocumentReference<ListOfTracksModel> doc({required String listOfTracksId}) {
    return FirebaseFirestore.instance.doc('list_of_tracks/$listOfTracksId').withConverter<ListOfTracksModel>(
        fromFirestore: (snapshot, _) => ListOfTracksModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }
}