import 'dart:io';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:gymbroappv4/models/excersice_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

Future<String> getAssetPath(String asset) async {
  final path = await getLocalPath(asset);
  await Directory(dirname(path)).create(recursive: true);
  final file = File(path);
  if (!await file.exists()) {
    final byteData = await rootBundle.load(asset);
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
  }
  return file.path;
}

Future<String> getLocalPath(String path) async {
  return '${(await getApplicationSupportDirectory()).path}/$path';
}

double angle(PoseLandmark firstLandmark, PoseLandmark midLandmark,
    PoseLandmark lastLandmark) {
  final radians = math.atan2(
          lastLandmark.y - midLandmark.y, lastLandmark.x - midLandmark.x) -
      math.atan2(
          firstLandmark.y - midLandmark.y, firstLandmark.x - midLandmark.x);
  double degrees = radians * 180.0 / math.pi;
  degrees = degrees.abs(); // Angle should never be negative
  if (degrees > 180.0) {
    degrees =
        360.0 - degrees; // Always get the acute representation of the angle
  }
  return degrees;
}

ExcersiceState? isPushUp(double angleElBow, ExcersiceState current) {
  final umbralElBow = 75.0;
  final umbralElBowExt = 150.0;
  if (current == ExcersiceState.neutral &&
      angleElBow > umbralElBowExt &&
      angleElBow < 180.0) {
    return ExcersiceState.init;
  } else if (current == ExcersiceState.init &&
      angleElBow < umbralElBow &&
      angleElBow > 35.0) {
    return ExcersiceState.complete;
  }else if (current == ExcersiceState.init && angleElBow > umbralElBow && angleElBow < 120.0){
    return ExcersiceState.incorrect;
  }
}

ExcersiceState? isCurlhUp(double angleElBow, ExcersiceState current) {
  final umbralElBow = 75.0;
  final umbralElBowExt = 160.0;
  if (current == ExcersiceState.neutral &&
      angleElBow > umbralElBowExt &&
      angleElBow < 180.0) {
    return ExcersiceState.init;
  } else if (current == ExcersiceState.init &&
      angleElBow < umbralElBow &&
      angleElBow > 35.0) {
    return ExcersiceState.complete;
  }else if (current == ExcersiceState.init && angleElBow > umbralElBow && angleElBow < 120.0){
    return ExcersiceState.incorrect;
  }
}

ExcersiceState? isPresshUp(double angleElBow, ExcersiceState current) {
  final umbralElShoulder = 75.0;
  final umbralElShoulderExt = 160.0;
  if (current == ExcersiceState.neutral &&
      angleElBow > umbralElShoulderExt &&
      angleElBow < 180.0) {
    return ExcersiceState.init;
  } else if (current == ExcersiceState.init &&
      angleElBow < umbralElShoulder &&
      angleElBow > 35.0) {
    return ExcersiceState.complete;
  }else if (current == ExcersiceState.init && angleElBow > umbralElShoulder && angleElBow < 120.0){
    return ExcersiceState.incorrect;
  }
}

ExcersiceState? isSquatDown(double angleElKnee, ExcersiceState current) {
  final umbralElKnee = 90.0;
  final umbralElKneeExt = 160.0;
  if (current == ExcersiceState.neutral &&
      angleElKnee > umbralElKneeExt &&
      angleElKnee < 180.0) {
    return ExcersiceState.init;
  } else if (current == ExcersiceState.init &&
      angleElKnee < umbralElKnee &&
      angleElKnee > 70.0) {
    return ExcersiceState.complete;
  }else if (current == ExcersiceState.init && angleElKnee > umbralElKnee && angleElKnee < 120.0){
    return ExcersiceState.incorrect;
  }
}
