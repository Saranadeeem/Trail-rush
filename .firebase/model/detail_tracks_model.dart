
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
part 'detail_tracks_model.g.dart';
@JsonSerializable()
class DetailTracksModel {
  final String? altitudeAtStartAndFinish;
  final String? altitudeAtStartAndFinish1;
  final String? description;
  final String? history;
  final String? length;
  final String? maps;
  final String? months;
  final String? bestSeason;
  final String? endPoint;
  final String? maxAltitude;
  final String? startPoint;
  final String? height;
  final String? overView;
  final String? standard;
  final String? zone;
  final String? filterName;
  final String? name;
  final String? maximumAltitude;
  final String? startEndAltitude;
  final String? startAndFinish;
  final String? level;
  final String? maximumHeight;
  final String? maximumHeight1;
  final String? guideRequirement;
  final String? duration;
  final String? books;
  final String? difficulty;
  final String? recommendedMaps;
  final String? time;
  final String? bestTime;
  final String? difficultyLevel;
  final String? elevation;
  final String? elevationAtFinish;
  final String? elevationAtStart;
  final String? startingAltitude;
  final String? altitudeAtFinish;
  final String? altitudeAtStart;
  final String? recommendedTravelMethod;
  final String? mapReferences;
  final String? activities;
  final String? startingAndFinishingAltitude;
  final String? startingPoint;
  final String? distance;
  final String? trekStandard;
  final String? environmentalAndHistoricalContext;
  final String? bestMonths;
  final String? culturalAndHistoricalInsights;
  final String? husheValleyOverview;
  final String? stages;


  DetailTracksModel({
    this.altitudeAtStartAndFinish,
    this.altitudeAtStartAndFinish1,
    this.startingAndFinishingAltitude,
    this.startingPoint,
    this.distance,
    this.description,
    this.history,
    this.length,
    this.maps,
    this.months,
    this.maxAltitude,
    this.startPoint,
    this.endPoint,
    this.bestSeason,
    this.height,
    this.overView,
    this.standard,
    this.zone,
    this.filterName,
    this.name,
    this.maximumAltitude,
    this.startEndAltitude,
    this.startAndFinish,
    this.level,
    this.maximumHeight,
    this.maximumHeight1,
    this.guideRequirement,
    this.duration,
    this.books,
    this.difficulty,
    this.recommendedMaps,
    this.time,
    this.bestTime,
    this.difficultyLevel,
    this.elevation,
    this.startingAltitude,
    this.altitudeAtFinish,
    this.altitudeAtStart,
    this.recommendedTravelMethod,
    this.mapReferences,
    this.activities,
    this.trekStandard,
    this.environmentalAndHistoricalContext,
    this.elevationAtFinish,
    this.elevationAtStart,
    this.bestMonths,
    this.culturalAndHistoricalInsights,
    this.husheValleyOverview,
    this.stages,
  });

  factory DetailTracksModel.fromJson(Map<String, dynamic> json) {
    return _$DetailTracksModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$DetailTracksModelToJson(this);

  static CollectionReference<DetailTracksModel> collection() {
    return FirebaseFirestore.instance.collection('Detailtracks').withConverter<DetailTracksModel>(
        fromFirestore: (snapshot, _) => DetailTracksModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }

  static DocumentReference<DetailTracksModel> doc({required String listOfTracksId}) {
    return FirebaseFirestore.instance.doc('Detailtracks/$listOfTracksId').withConverter<DetailTracksModel>(
        fromFirestore: (snapshot, _) => DetailTracksModel.fromJson(snapshot.data()!),
        toFirestore: (student, _) => student.toJson());
  }
}
