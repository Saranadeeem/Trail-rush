// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_tracks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfTracksModel _$ListOfTracksModelFromJson(Map<String, dynamic> json) =>
    ListOfTracksModel(
      location: json['location'] as String?,
      nameoftrack: (json['nameoftrack'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ListOfTracksModelToJson(ListOfTracksModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'nameoftrack': instance.nameoftrack,
    };
